//: Playground - noun: a place where people can play

import UIKit

// constant - a String instance
let playground = "Hello, playground"

// mutable string - a mutable instance of the String type.
var mutablePlayground = "Hello, mutable playground"

// Adding to a mutable string
mutablePlayground += "!"

// mutablePlayground's characters
for c: Character in mutablePlayground.characters{
    print("'\(c)'")
}

// using a Unicode scalar - \u{} syntax represents the Unicode scalar

let oneCoolDude = "\u{1F60E}"

let aAcute = "\u{0061}\u{0301}"

// revealling the Unicode scalar
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// using a precomposed character
let aAcutePrecomposed = "\u{00E1}"

// checking equivalence
let b = (aAcute == aAcutePrecomposed) // true

// counting characters
//print("aAcute: \(aAcute.characters.count);
//    aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

let fromStart = playground.startIndex
let toPosition = 4 // The first position is 0
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end] //'o'
//pulling out a range
let range = fromStart...end
let firstFive = playground[range] // 'Hello'



