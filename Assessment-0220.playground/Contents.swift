//: Playground - noun: a place where people can play

import UIKit

func iterativeFunc(characterArray: [String])->Int {
    var counter = 0
    for x in 0..<characterArray.count {
        if characterArray[x] == " " {
            counter += 1
        } else if characterArray[x] == "a" {
            counter -= 5
        }
    }
    return counter
}



let test : [String] = ["b", "c", "d", "e", "f", "a", "g", "a"]

let test2 = ["b", "c", "d", "e", "f", "g", " ", " "]

let test3 = ["b"]

iterativeFunc(test)

iterativeFunc(test2)

iterativeFunc(test3)

//func recursiveFunc(var characterArray1: [String]) -> Int {
//    if (characterArray1.isEmpty()) {
//        return 0
//    }
//    
//    var incr = 0
//    if characterArray1[0] == " " {
//        incr = 1
//    } else if characterArray1[0] == "a" {
//        incr = -5
//    }
//    characterArray1.removeValueAtIndex(0)
//    return incr + recursiveFunc(characterArray1)
//}


func recursiveFunc(var characterArray: [String]) -> Int {
    
    if (characterArray.isEmpty) {
        return 0
    }
    
    var counter = 0
    
    if characterArray[0] == " " {
        counter = 1
    } else if characterArray[0] == "a" {
        counter = -5
    }
    
    characterArray.removeAtIndex(0)
    return counter + recursiveFunc(characterArray)
}

recursiveFunc(test)



func rotateMatrix(mat:[[Int]]) -> [[Int]] {
    let newRowCount = mat[0].count
    let newColCount = mat.count
    var newMat = Array(count: newRowCount, repeatedValue: Array(count: newColCount, repeatedValue: 0))
    for i in (0..<mat.count) {
        for j in (0..<mat[0].count) {
            newMat[j][newColCount - 1 - i] = mat[i][j]
        }
    }
    return newMat
}

let rotateInput = [[1,2,3,4],
    [5,6,7,8],
    [9,0,1,2],
    [3,4,5,6]]

rotateMatrix(rotateInput)

let rotateInput1 = [[1, 4, 7],
[2, 5, 8],
[3, 6, 9]
]

rotateMatrix(rotateInput1)


//
//func rotateMat(matrix: [[Int]]) -> [[Int]] {
//    let countOfRows = matrix[0].count
//    let countOfColumns = matrix.count
//    
//    var output = [Int]()
//    
//    for (var rowIndex = countOfRows - 1; rowIndex >= 0; rowIndex--) {
//    
//    var outCol = [Int]()
//    
//    for inCol in matrix {
//        outCol.append(inCol[rowIndex])
//        }
//        output.append(col)
//    }
//    return output
//}
//


