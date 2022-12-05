#include<iostream>
using namespace std;

extern "C" {
    int decryptCpp(int n) {
       return n - 10;
    }

    int encryptCpp(int n) {
       return n + 10;
    }
}