//: Playground - noun: a place where people can play

import UIKit

/*
class TreeNode: NSObject {
    
    var left: TreeNode?
    var right: TreeNode?
    var value: Int?

    // write a class function getMax() -> maximum value in the tree with the given root node
    //     10
    //  12    13
    // getMax(theRootNode) -> 13
    // getMax(nil) -> nil
    //
    // var root = TreeNode(value: 15)
    // var leftOne = TreeNode(value: 16)
    // var rightOne = TreeNode(value: 10)
    // var leftTwo = TreeNode(value: 18)
    // root.left = leftOne
    // root.right = rightOne
    // leftOne.left = leftTwo
    //
    //            15
    //          /   \
    //        16     10
    //      /
    //    18
    // if let left = root.left {
    //   NSLog("\(left.value)") => log 16
    // }
    // if let secondLeft = root.left?.left?.left?.left?.left
    
    // getMax(root: TreeNode<Int>?) -> Int? {
    // if root is nil return nil
    // otherwise we grab its value
    // then recursively look at it's left and right subtrees
    //   if let leftMax = getMax(root!) {
    //     if left Max is closer than value then set the closest in this method call
    //     to leftMax
    //   }
    //
    // }
    

func getMax(root: TreeNode?) -> Int? {
        if let unwrappedRoot = root {
            var maxSoFar = unwrappedRoot.value
            if let leftMax = getMax(unwrappedRoot.left) {
                maxSoFar = max(leftMax, maxSoFar!)
            }
            if let rightMax = getMax(unwrappedRoot.right) {
                maxSoFar = max(rightMax, maxSoFar!)
            }
            return maxSoFar
        } else {
            return nil
        }
}
}

*/

class Node <T: Comparable> {
    var left: Node?
    var right: Node?
    var root: Node?
    var value: T?
    
    init(root: Node<T>) {
        self.root = root
    }
    
    init() {
        
    }
}

extension Node {
    func getMax<T>(tree: Node<T>) -> T {
        if let rn = tree.right {
            return getMax(rn)
        }
        
        return tree.value!
    }
    
    func rootToMax<T>(tree: Node<T>) -> Int {
        if let rn = tree.right {
            return rootToMax(rn) + 1
        }
        return 0
    }
}







