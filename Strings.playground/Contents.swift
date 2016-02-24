//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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


// var numberOfSpotlights = "Four"

// var numberOfSpotlights: Int = 4

let numberOfSpotlights: Int = 4

// numberOfSpotlights += 2

var population: Int

population = 5422

let townName: String = "knowhere"

//let townDescription =
//"\(townName) has a population of \(population) and \(numberOfSpotlights) spotlights."

var townDescription =
"\(townName) has a population of \(population) and \(numberOfSpotlights) spotlights."


print(townDescription)

var levelOfUnemployment : Int

levelOfUnemployment = 3

townDescription += "The level of Unemployment is \(levelOfUnemployment)."

print(townDescription)



