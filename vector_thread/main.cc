#include <iostream>
#include <vector>
#include <algorithm>
#include <chrono>
#include <random>
#include <future>
#include <thread>
#include <numeric>

#include "e2.h"

//create shortcut
namespace sc = std::chrono;

int main() {

    std::vector<int> myVec (50000000);
    std::srand(0);

    //another, better option would be to use std::generate and a c++11ish random generator
    for(int i = 0; i < myVec.capacity(); ++i) {
        myVec[i] = std::rand() % 1000;
    }

    //http://en.cppreference.com/w/cpp/chrono
    auto start = sc::high_resolution_clock::now();

    int minVal;
    int maxVal;
    //long sum;
    double average;

    //todo:  insert code here to populate these values
    //       the final execution time must be faster
    //       than what can be achieved with a single thread
    //      bonus points will be rewarded for fastest times
    unsigned long sum = 0;


    std::future<long> t1 = std::async(std::launch::async,[&]{return std::accumulate(myVec.begin(),myVec.end(),0l);});
    std::future<int> t2 = std::async(std::launch::async,[&]{return *std::max_element(myVec.begin(),myVec.end());});
    std::future<int> t3 = std::async(std::launch::async,[&]{return *std::min_element(myVec.begin(),myVec.end());});

    sum = t1.get();
    maxVal = t2.get();
    minVal = t3.get();
    average = sum/50000000.0;
    /*
    //unsigned const long num_threads = std::thread::hardware_concurrency();
    std::thread t1(summation,std::ref(sum),std::ref(myVec),0,12500000);
    std::thread t2(summation,std::ref(sum),std::ref(myVec),12500000,25000000);
    std::thread t3(summation,std::ref(sum),std::ref(myVec),25000000,37500000);
    std::thread t4(summation,std::ref(sum),std::ref(myVec),25000000,50000000);
    std::thread t5(max_value,std::ref(maxVal), myVec);
    std::thread t6(min_value,std::ref(minVal),myVec);

    average = sum/50000000.0;

    t1.join();
    t2.join();
    t3.join();
    t4.join();
    t5.join();
    t6.join();
    */
    auto end = sc::high_resolution_clock::now();

    std::cout << "Min: " << minVal << std::endl;
    std::cout << "Max: " << maxVal << std::endl;
    std::cout << "Sum: " << sum << std::endl;
    std::cout << "Average: " << average << std::endl;

    std::cout << "Elapsed Time: " << sc::duration_cast<sc::milliseconds>(end - start).count() << "ms" << std::endl;
}