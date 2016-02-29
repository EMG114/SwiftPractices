//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func mult(a: Int, b: Int) -> Int {
    if b == 1 { return a }
    return a + mult(a, b: b - 1)
}

mult(9, b: 10)


func pow(x: Int, power:Int) -> Int {
    if power == 0 {return 1}
    return x * pow(x, power: power - 1)
}


pow(2.0, 3)


