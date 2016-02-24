//: Playground - noun: a place where people can play

import UIKit

//BIG O NOTATION

// Making Comparison
// Searching values in a sorted array

//array of sorted integers
let numberList : Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// LINEAR TIME - Our first approach employs a common “brute force” technique that involves looping through the entire array until we find a match.
// While this approach achieves our goal, each item in the array must be evaluated. A function like this is said to run in “linear time” because its speed is dependent on its input size. In other words, the algorithm becomes less efficient as its input size (n) grows. O(n)

func linearSearch(key: Int) {
    
    //check all possible values
    for number in numberList {
        if number == key {
            print("value at \(key) found.")
            break
        }
    }
}

linearSearch(8)

// LOGARITHMIC TIME - Our next approach uses a technique called binary search. With this method, we apply our knowl- edge about the data to help reduce our search criteria.
// This type of search is said to work in logarithmic time and is represented with the symbol O(log n). Overall, its complexity is minimized when the size of its inputs (n) grows.

func binarySeach(key: Int, imin: Int, imax: Int) {
    
    var midIndex : Double = round(Double((imin + imax) / 2))
    var midNumber = numberList[Int(midIndex)]
    
    //reduce the range
    if midNumber > key {
        binarySeach(key, imin: imin, imax: Int(midIndex) - 1)
    }
    
    //increase the range
    else if (midNumber < key) {
        binarySeach(key, imin: Int(midIndex) + 1, imax: imax)
    }
    else {
        print("value \(key) found..")
    }
}

binarySeach(6, imin: 1, imax: 10)
/*

// Sorting - Sorting is an essential task when managing data. As we saw with Big O Notation, sorted data allows us to implement efficient algorithms. Our goal with sorting is to move from disarray to or- der. This is done by arranging data in a logical sequence so we’ll know where to find information. Sequences can be easily implemented with integers, but can also be achieved with characters (e.g., alphabets), and other sets like binary and hexadecimal numbers. 

//a simple array of unsorted integers
var numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]

*/

