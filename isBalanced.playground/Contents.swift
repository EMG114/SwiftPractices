//: Playground - noun: a place where people can play

import UIKit

func isBalanced(paren: [String]) -> Bool {
    
    var stack = [String]()
    for (var i = 0; i < paren.count; i++) {
        let check = paren[i]
        if (check == "(" || check == "[" || check == "{") {
            stack.append(check);
        } else if (stack.count == 0) {
            return false
        } else if (check == ")" && stack.removeLast() != "(") {
            return false
        } else if (check == "]" && stack.removeLast() != "[") {
            return false
        } else if (check == "}" && stack.removeLast() != "{") {
            return false
        }
    }
    return true
}


var good = ["(", ")", "[", "]", "(", ")", "(", "[", "]", "(", ")", "[", "]", ")"]
var bad = ["(", "(", "]", "(", "[", ")", "]"]
var test = [")", ")"]
var test2 = ["{","[", "]","}", "{", "}"]

isBalanced(good)
isBalanced(bad)
isBalanced(test)
isBalanced(test2)
isBalanced([])