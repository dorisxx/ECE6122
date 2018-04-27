//
// Created by Brian Swenson on 1/29/18.
//

#pragma once
#include <iostream>


template<typename T>
class Vec3 {
public:
//fill in here
    void setX(T X){x = X;}
    void setY(T Y){y = Y;}
    void setZ(T Z){z = Z;}
    T getX() const {return x; }
    T getY() const {return y;}
    T getZ() const {return z;}

    Vec3<T>(){}
    Vec3<T>(T N){setX(N);setY(N);setZ(N);}
    Vec3<T>(T X, T Y, T Z){setX(X);setY(Y);setZ(Z);}
    Vec3<T>(const Vec3<T>& V){setX(V.x);setY(V.y);setZ(V.z);}


    Vec3<T>& operator+=(Vec3<T> v){x += v.x; y += v.y; z+=v.z; return *this;}
    Vec3<T>& operator-=(Vec3<T> v){x -= v.x; y -= v.y; z-=v.z; return *this;}

    Vec3<T> operator+(Vec3<T> v){return Vec3(x+ v.x, y+v.y, z+v.z);}
    Vec3<T> operator-(Vec3<T> v){return Vec3(x-v.x, y-v.y, z-v.z);}
    Vec3<T> operator/(int c){return Vec3(x/c,y/c,z/c);}
    Vec3<T> operator*(int c){return Vec3(x*c,y*c,z*c);}

    Vec3<T>& operator++ (){T i; i = this->x; this->x = this->z; this->z = this->y; this->y = i; return *this;}
    Vec3<T> operator++(int){Vec3<T> result(*this); ++(*this); return result;}

    Vec3<T>& operator-- (){T i; i = this->x; this->x = this->y; this->y = this->z; this->z = i; return *this;}
    Vec3<T> operator--(int){Vec3<T> result(*this); --(*this); return result;}

    Vec3<T>& operator*=(int v){x = x*v ; y = y*v; z = z*v; return *this;}
    Vec3<T>& operator/=(int v){x = x/v; y = y/v; z = z/v; return *this;}

    bool operator ==(Vec3<T> v){return (x == v.x) && (y == v.y) &&  (z == v.z); }
    bool operator !=(Vec3<T> v){return (x != v.x) || (y!=v.y) || (z != v.z);}

    double dot(Vec3<T> v){
        return x*v.x+y*v.y+z*v.z;
    }



private:
    T x;
    T y;
    T z;
};

//for printing
template<typename T>
std::ostream& operator<<(std::ostream& stream, const Vec3<T>& vec) {
    stream << "X=" << vec.getX() << ", Y=" << vec.getY() << ", Z=" << vec.getZ();
    return stream;
}