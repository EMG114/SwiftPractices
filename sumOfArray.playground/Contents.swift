//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// number of elements
var n = 6

// read array
var arr = [1, 2, 4, 5, 7, 3]

// variable to hold the sum of the array elements
var sum = 0

for i in 0..<n {
    // sum the array elements
    sum += Int(arr[i])
}

// print the array elements
print(sum)