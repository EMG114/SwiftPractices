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

for var i = 1; i < 6; ++i {
    ++myFirstInt
    print(myFirstInt)
}

// while loops
var i = 1
while i < 6 {
    ++myFirstInt
    print(myFirstInt)
    ++i
}

var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blasterOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blasterOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blasterOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire blasters!")
    
    ++blasterFireCount
    ++spaceDemonsDestroyed
}

