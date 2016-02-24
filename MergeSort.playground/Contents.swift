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



[10, 2, 6, 5]
[10, 2]
[10]

func mergeSort(values: [Int]) -> [Int] {
    let n = values.count
    
    // Check length of values, return values if count is less than 2
    if n < 2 {
        return values
    }
    
    // Split values into left and right (roughly equal size)
    var left = Array(values[0..<n / 2])
    var right = Array(values[n / 2..<n])
    
    // Sort the left half
    left = mergeSort(left)
    
    // Sort the right half
    right = mergeSort(right)
    
    // Merge the two halves together
    // Return the result
    return merge2(left, right)
}
func merge(left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    
    // Iterate over both left and right at the same time
    var i = 0
    var j = 0
    
    while i < left.count || j < right.count {
        // Compare pairs of values in left and right
        if j >= right.count || (i < left.count && left[i] < right[j]) {
            // Take left[i]
            result.append(left[i])
            i += 1
        } else if j < right.count {
            // Take right[j]
            result.append(right[j])
            j += 1
        }
    }
    // Take the minimum of the two and add it to the result
    
    return result
}

func merge2(left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    
    var leftGen = left.generate()
    var rightGen = right.generate()
    var leftVal = leftGen.next()
    var rightVal = rightGen.next()
    
    let takeLeft = { () -> Void in
        result.append(leftVal!)
        leftVal = leftGen.next()
    }
    func takeRight() {
        result.append(rightVal!)
        rightVal = rightGen.next()
    }
    while leftVal != nil || rightVal != nil {
        if rightVal == nil {
            takeLeft()
        } else if leftVal == nil {
            takeRight()
        } else {
            if leftVal < rightVal {
                takeLeft()
            } else {
                takeRight()
            }
        }
    }
    return result
}


func doSomething(arg: [Int]) {
    func helper(index: Int) {
        if index < arg.count {
            print(arg[index])
            helper(index + 1)
        }
    }
    helper(0)
}
doSomething([1,2,3])

mergeSort([10, 2, 6, 5, 7])

merge([3, 6], [1, 2])

//
//let array = [1, 2, 3, 4]
//let n = array.count
//
//n
//n / 2
//
//Array(array[0..<n / 2])
//Array(array[n / 2..<n])
//
//
//var left: [Int] = []
//for i in 0..<array.count / 2 {
//  left.append(array[i])
//}
//left
//
//
//
//
//
//
//
//
//
//
//
//
//
//func fib(n: Int) -> Int {
//  var a = 0
//  var b = 1
//  for _ in 0..<n {
//    let t = a
//    a = b
//    b = t + b
//  }
//  return b
//}
//
//(0...5).map { i in fib(i) }
//
//
//var stepNum = 0
//func tryStep() -> Int {
//  let stepCount = Int(arc4random_uniform(3)) - 1
//  stepNum += stepCount;
//  switch(stepCount) {
//  case -1: print("Ouch \(stepNum)")
//  case 1: print("Yay  \(stepNum)")
//  default: print("Beep \(stepNum)")
//  }
//  return stepCount
//}
//
//func stepUp() {
//  switch tryStep() {
//  case 1:
//    return
//  case -1:
//    stepUp()
//    stepUp()
//  default:
//    stepUp()
//  }
//}
//
//
//
//

/*
//[10, 2]
//[10]
//[2]


func mergeSort(values: [Int]) -> [Int] {
let n = values.count
// Check length of values, return values if count is less than 2
if n < 2{
return values
}
// Split values into left and right (roughly equal size)

var left = Array(values[0..<n / 2])
var right = Array(values[n / 2..<n])

// Sort the left half
left = mergeSort(left)

// Sort the right half
right = mergeSort(right)

// Merge the two halves together
// Return the result

return merge(withLeftArray: left, andRightArray: right)
}

func merge(withLeftArray left: [Int], andRightArray right: [Int]) -> [Int] {
// Iterate over both left and right at the same time
var i = 0
var j = 0
var result: [Int] = []

while i < left.count || j < right.count {

// Compare pairs of values in left and right
//        if j >= right.count || left[i] < right[j] {
//            //Take left[i]
//            result.append(left[i])
//            i += 1
//        } else if j < right.count {
//            //Take right[j]
//            result.append(right[j])
//            j += 1
//        }
// method 1

if j >= right.count {
result.append(left[i])
i++
continue
}
else if i >= left.count {
result.append(right[j])
j++
continue
}

if left[i] <= right[j] {
result.append(left[i])
i++
}else{
result.append(right[j])
j++
}

}

// Take the minimum of the two and add it to the result

return result // <-- change this
}

mergeSort([10, 2, 6, 5, 7])

merge(withLeftArray: [3, 6], andRightArray: [1, 2])










/*
// spliting array
let array = [1, 2, 3, 4]

array.count

array.count/2

Array(array[0..<array.count/2])
Array(array[array.count/2..<array.count])

//or....
var left: [Int] = []
for i in 0..<array.count/2 {
left.append(array[i])
}
left

var right: [Int] = []
for i in array.count/2..<array.count {
right.append(array[i])
}
right
*/
/*
func mergeSort(values: [Int]) -> [Int] {
// Sort the left half
// Sort the right half
// Merge the two halves together
//return the result
return [] // <-- change this
}

func merge(withLeftArray left: [Int], andRightArray right: [Int]) -> [Int] {
//Iterate over both left and right at the same time
// Compare pairs of values in left and right
// Take the minimum of the two and add it to the result

return[] // <-- change this
}

*/

/*
[3, 6, 5, 2, 1, 10]

let left = [3, 6, 5]

let leftleft = [3, 6]

let leftleftleft = [3]
let leftleftright = [6]

let leftright = [5]

let left_merged = [3, 5, 6]

[3, 6]
[5]

let right = [2, 1, 10]
let rightleft = [2, 1]

let rightleftleft = [2]
let rightleftright = [1]

let rightleft_merged = [1, 2]
let rightright = [10]

let right_merged = [1, 2, 10]

[3, 5, 6]
[1, 2, 10]

[1, 2, 3, 5, 6, 10]
*/
*/
