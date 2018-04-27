// Distributed two-dimensional Discrete FFT transform
// Shenghua Xiang

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <math.h>
#include <thread>
#include <stdlib.h>
#include <mutex>

#include "Complex.h"
#include "InputImage.h"

constexpr unsigned int NUMTHREADS = 4;

using namespace std;

//undergrad students can assume NUMTHREADS will evenly divide the number of rows in tested images
//graduate students should assume NUMTHREADS will not always evenly divide the number of rows in tested images.
// I will test with a different image than the one given


//declare global variables and functions
int width;
int height;
Complex *imagedata;

void Transform1D(Complex *h, int w, Complex *H);
void Transpose(Complex* b, int width,int height);
void compute_rows(int start, int end,int width,Complex* transform,Complex* imagedata);
void InverseTransform1D(Complex *h, int w, Complex *H);
void inverse_compute_rows(int start, int end,int width,Complex* transform,Complex* imagedata);


void Transform2D(const char* inputFN) 
{ // Do the 2D transform here.
  // 1) Use the InputImage object to read in the Tower.txt file and
  //    find the width/height of the input image.
  // 2) Create a vector of complex objects of size width * height to hold
  //    values calculated
  // 3) Do the individual 1D transforms on the rows assigned to each thread
  // 4) Force each thread to wait until all threads have completed their row calculations
  //    prior to starting column calculations
  // 5) Perform column calculations
  // 6) Wait for all column calculations to complete
  // 7) Use SaveImageData() to output the final results

    InputImage image(inputFN);  // Create the helper object for reading the image
  // Step (1) in the comments is the line above.
  // Your code here, steps 2-7
    width = image.GetWidth();
    height = image.GetHeight();
    Complex* transform = new Complex[width*height];
    Complex* transform2 = new Complex[width*height];
    Complex* transform3 = new Complex[width*height];
    Complex* transform4 = new Complex[width*height];
    imagedata = image.GetImageData();
    thread t[NUMTHREADS];
    thread f[NUMTHREADS];

    //initialize transform
    for(int i=0; i<width*height; ++i){
        transform[i]=Complex();
        transform2[i]=Complex();
    }

    //fourier transform the rows
    int num = floor(height/NUMTHREADS);
    for (int n=0;n<NUMTHREADS;n++){

        int s = n*num;
        int e = (n+1)*num;
        if ((n+1) == NUMTHREADS){
            e = height;
        }
        t[n] = thread(compute_rows,s,e,width,&transform[0],&imagedata[0]);
    }

    for (int i=0;i<NUMTHREADS;i++) {
        t[i].join();
    }

    //fourier transform the columns
    Transpose(&transform[0],width,height);
    for (int n=0;n<NUMTHREADS;n++){

        int s = n*num;
        int e = (n+1)*num;
        if ((n+1) == NUMTHREADS){
            e = width;
        }
        f[n] = thread(compute_rows,s,e,height,&transform2[0],&transform[0]);
    }

    for (int i=0;i<NUMTHREADS;i++) {
        f[i].join();
    }


    Transpose(&transform2[0],width,height);
    image.SaveImageData("../MyAfter2D.txt",transform2,width,height);

    //reverse the rows
    for (int n=0;n<NUMTHREADS;n++){

        int s = n*num;
        int e = (n+1)*num;
        if ((n+1) == NUMTHREADS){
            e = height;
        }
        t[n] = thread(inverse_compute_rows,s,e,width,&transform3[0],&transform2[0]);
    }

    for (int i=0;i<NUMTHREADS;i++) {
        t[i].join();
    }

    //reverse the columns
    Transpose(&transform3[0],width,height);
    for (int n=0;n<NUMTHREADS;n++){

        int s = n*num;
        int e = (n+1)*num;
        if ((n+1) == NUMTHREADS){
            e = width;
        }
        f[n] = thread(inverse_compute_rows,s,e,height,&transform4[0],&transform3[0]);
    }

    for (int i=0;i<NUMTHREADS;i++) {
        f[i].join();
    }

    Transpose(&transform4[0],width,height);
    image.SaveImageDataReal("../MyAfterInverse.txt",transform4,width,height);

}



void compute_rows(int start, int end,int width,Complex* transform,Complex* imagedata){
    for (int j=start;j<end;++j){
        Transform1D(&imagedata[j*width],width,&transform[j*width]);
    }
}

void inverse_compute_rows(int start, int end,int width,Complex* transform,Complex* imagedata){
    for (int j=start;j<end;++j){
        InverseTransform1D(&imagedata[j*width],width,&transform[j*width]);
    }
}


void Transpose(Complex* b, int width,int height){
    Complex* temp = new Complex[width*height];
    for(int i =0; i< width;++i){
        for(int j=0;j<height;++j)
        {
            temp[j*width+i] = b[i*height+j];

        }
    }
    for(int m = 0;m<width*height;m++){
        b[m]= temp[m];
    }

}

void Transform1D(Complex *h, int w, Complex *H)
{
  // Implement a simple 1-d DFT using the double summation equation
  // given in the assignment handout.  h is the time-domain input
  // data, w is the width (N), and H is the output array.

    for (int i = 0; i< w;++i){
        Complex sum(0);
        for (int j =0; j<w; ++j){
            sum = Complex(cos(2*i*j*M_PI/w),-sin(2*i*j*M_PI/w))*h[j]+sum;
        }
        H[i] = sum;
    }
}

void InverseTransform1D(Complex *h, int w, Complex *H)
{
    // Implement a simple 1-d DFT using the double summation equation
    // given in the assignment handout.  h is the time-domain input
    // data, w is the width (N), and H is the output array.

    for (int i = 0; i< w;++i){
        Complex sum(0);

        Complex N(1/double(w));
        for (int j =0; j<w; ++j){
            sum = Complex(cos(2*i*j*M_PI/w),sin(2*i*j*M_PI/w))*h[j]+sum;
        }
        H[i] = sum*N;
    }
}


int main(int argc, char** argv)
{
  string fn("../Tower.txt"); // default file name
  if (argc > 1) fn = string(argv[1]);  // if name specified on cmd line
  Transform2D(fn.c_str()); // Perform the transform.
}  
  

