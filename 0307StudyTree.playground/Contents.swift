//: Playground - noun: a place where people can play

import UIKit

//Trees Keynotes https://drive.google.com/file/d/0B0eZ0hF8kDy_QUhrWE9DNWI1alU/view


class Node <T: Comparable> {
    var left: Node?
    var right: Node?
    let currentNode: T
    // set the value to current node
    init(value: T) {
        self.currentNode = value
    }
}

extension Node {
    // 1) Compare insert value to the present node
    // 2) if insert value < the self.currentNode we check the left Node to see if it's empty
    //      2a) If it's not empty, we use recursion to traverse down to the left side of the self.currentNode and set the next node as self.currentNode. we call the insert method again until self.currentNode == nil and set insert value to self.currentNode.
    // 3) same applies to insert value > self.currentNode (read step 2)
    func insert(value: T) {
        if value < self.currentNode {
            if left == nil {
                // setting the value to the current node by calling the init()
                left = Node(value: value)
            } else {
                // recursively traverse down the tree untill either left or right Node is equal to nill
                left?.insert(value)
            }
        } else {
            if right == nil {
                // setting the value to the current node by calling the init()
                right = Node(value: value)
            } else {
                // recursively traverse down the tree untill either left or right Node is equal to nill
                right?.insert(value)
            }
        }
    }
    
    func find(value:T) -> Node? {
        if value == self.currentNode {
            return self
        }
        
        if value < self.currentNode {
            return left?.find(value)
        } else {
            return right?.find(value)
        }
    }
}

extension Node {
    func printInOrder() {
        left?.printInOrder()
        print(self.description)
        right?.printInOrder()
    }
    
    func printPreOrder() {
        print(self)
        left?.printPreOrder()
        right?.printPreOrder()
    }
    
    func printPostOrder() {
        left?.printPostOrder()
        right?.printPostOrder()
        print(self)
    }
    
}

extension Node: CustomStringConvertible {
    // Everytime when print(self) is called. the description property will be printed. We want set the currentNode to the descrption.
    var description: String {
        return "current node is \(currentNode)"
    }
}

let a = Node(value: "a")
let b = Node(value: "b")
let c = Node(value: "c")
let d = Node(value: "d")
let e = Node(value: "e")
let f = Node(value: "f")
let g = Node(value: "g")

d.left = b

b.left = a
b.right = c

d.right = f

f.left = e
f.right = g

d.printInOrder()
print("=======")
d.printPreOrder()
print("=======")
d.printPostOrder()

d.find("e");

/*
class Node <T: Comparable> {
    var left: Node?
    var right: Node?
    let currentNode: T
    // set the value to current node
    init(value: T) {
        self.currentNode = value
    }
}

extension Node {
    
    
    func find(value: T) -> Node? {
        
        if value == self.currentNode {
            return self
        }
        
        if value < self.currentNode {
            return left?.find(value)
        }else {
            return right?.find(value)
        }
        
    }
    // 1) Compare insert value to the present node
    // 2) if insert value < the self.currentNode we check the left Node to see if it's empty
    //      2a) If it's not empty, we use recursion to traverse down to the left side of the self.currentNode and set the next node as self.currentNode. we call the insert method again until self.currentNode == nil and set insert value to self.currentNode.
    // 3) same applies to insert value > self.currentNode (read step 2)
    func insert(value: T) {
        if value < self.currentNode {
            if left == nil {
                // setting the value to the current node by calling the init()
                left = Node(value: value)
            } else {
                // recursively traverse down the tree untill either left or right Node is equal to nill
                left?.insert(value)
            }
        } else {
            if right == nil {
                // setting the value to the current node by calling the init()
                right = Node(value: value)
            } else {
                // recursively traverse down the tree untill either left or right Node is equal to nill
                right?.insert(value)
            }
        }
    }
}

extension Node {
    func printInOrder() {
        left?.printInOrder()
        print(self)
        right?.printInOrder()
    }
    
    func printPreOrder() {
        print(self)
        left?.printPreOrder()
        right?.printPreOrder()
    }
    
    func printPostOrder() {
        left?.printPostOrder()
        right?.printPostOrder()
        print(self)
    }
    
}


extension Node: CustomStringConvertible {
    var description: String {
        return "{\(currentNode)}"
    }
}

let a = Node(value: "a")
let b = Node(value: "b")
let c = Node(value: "c")
let d = Node(value: "d")
let e = Node(value: "e")
let f = Node(value: "f")
let g = Node(value: "g")

d.left = b
b.left = a
b.right = c
d.right = f
f.left = e
f.right = g

d.printInOrder()
print("=======")

d.printPreOrder()
print("=======")

d.printPostOrder()
print("=======")


d.find("g")

*/
//: [Next](@next)
/*
class Node<T: Comparable> {
    var left: Node?
    var right: Node?
    let symbol: T
    init(symbol: T) {
        self.symbol = symbol
    }
}

// Binary Search Tree methods
extension Node {
    func find(symbol: T) -> Node? {
        if self.symbol == symbol {
            return self
        }
        if symbol < self.symbol {
            return left?.find(symbol)
        } else {
            return right?.find(symbol)
        }
    }
    func insert(symbol: T) {
        if symbol < self.symbol {
            if left == nil {
                left = Node(symbol: symbol)
            } else {
                left?.insert(symbol)
            }
        } else {
            if right == nil {
                right = Node(symbol: symbol)
            } else {
                right?.insert(symbol)
            }
        }
    }
}

// Printing Methods
extension Node {
    func printInorder() {
        left?.printInorder()
        print(self)
        right?.printInorder()
    }
    func printPreorder(){
        print(self)
        left?.printPreorder()
        right?.printPreorder()
    }
    func printPostorder() {
        left?.printPostorder()
        right?.printPostorder()
        print(self)
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        return "{ \(symbol) }"
    }
}


let a = Node(symbol: "a")
let b = Node(symbol: "b")
let c = Node(symbol: "c")
let d = Node(symbol: "d")
let e = Node(symbol: "e")
let f = Node(symbol: "f")
let g = Node(symbol: "g")


d.left = b

b.left = a
b.right = c

d.right = f

f.left = e
f.right = g

/*
d
/   \
b     f
/ \   / \
a   c e   g

*/

d.printPreorder()
print("=========")
d.printPostorder()
print("=========")
d.printInorder()

d.find("e")

*/


