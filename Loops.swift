//: Playground - noun: a place where people can play

import UIKit

var myFirstInt: Int = 0

//for i in 1...5 {
for _ in 1...5 {
    ++myFirstInt
  //  print(myFirstInt)
   // print("myFirstInt equals \(myFirstInt) at iteration \(i)")
    print(myFirstInt)
}

for case let i in 1...100 where i % 3 == 0 {
    print(i)
}
// the following code does the same work as the above code, but it's less elegant.
for i in 1...100 {
    if i % 3 == 0 {
    print(i)
    }
}


