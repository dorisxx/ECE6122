//
// Created by Brian Swenson on 2/8/18.
//

#ifndef E2_E2_H
#define E2_E2_H

#endif //E2_E2_H

#include <iostream>
#include <mutex>
#include <thread>
#include <vector>

/*
std::mutex myMutex;

void summation(unsigned long& sum, const std::vector<int>& val, unsigned long beg, unsigned long end){
    for (auto i = beg; i< end; ++i){
        std::lock_guard<std::mutex> myLock(myMutex);
        sum += val[i];
    }
}

void max_value(int& maxVal, const std::vector<int>& val){
    maxVal = *std::max_element(val.begin(),val.end());
}

void min_value(int& minVal, const std::vector<int>& val){
    minVal = *std::min_element(val.begin(),val.end());
}
 */