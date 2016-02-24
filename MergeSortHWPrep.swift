//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func printAllElements(values: [Int]) {
    for value in values {
        print(value)
    }
}

func printAllElementsRecursive(values: [Int]) {
    printElementsHelper(values, index: 0)
}

func printElementsHelper(values: [Int], index: Int) {
    if index < values.count {
        print(values[index])
        printElementsHelper(values, index: index + 1)
    }
}

func setValue(inout array: [Int], value: Int, atIndex index: Int) {
    array[index] = value
}

var values = [10, 20, 30]
printAllElements(values)

setValue(&values, value: 100, atIndex: 1)
values

func reverse(inout array: [Int]) {
    for i in 0..<array.count / 2 {
        swap(&array[i], &array[array.count - i - 1])
    }
}

reverse(&values)
values