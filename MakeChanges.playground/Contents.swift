//: Playground - noun: a place where people can play

import UIKit


func makeChanges(totalCoins: Int) -> [Int: Int] {
    
    var newCoins : Int
    var numberOfCoins: Int
    
    var result = [Int: Int]()
    
    numberOfCoins = totalCoins / 100
    
    result[100] = numberOfCoins
    
  //  result.append(numberOfCoins)
    
    newCoins = totalCoins % 100
    
    numberOfCoins = newCoins / 25
    
    result[25] = numberOfCoins
    
  //  result.append(numberOfCoins)
    
    newCoins = newCoins % 25
    
    numberOfCoins = newCoins / 10
    
    result[10] = numberOfCoins
    
 //   result.append(numberOfCoins)
    
    newCoins = newCoins % 10
    
    numberOfCoins = newCoins / 5

    result[5] = numberOfCoins
    
//    result.append(numberOfCoins)
    
    newCoins = newCoins % 5

    
    result[1] = newCoins
    
//    result.append(newCoins)
    
    
    
    return result
}



makeChanges(87)



func makeCoins(var totalChanges: Int) -> [Int: Int] {
    
    var numberOfCoins : Int
    var result = [Int : Int]()
    
//    while (totalChanges > 1) {
        if (totalChanges > 100) {
            numberOfCoins = totalChanges / 100
            result[100] = numberOfCoins
            totalChanges = totalChanges % 100
        }
        
        if (totalChanges > 25) {
            numberOfCoins = totalChanges / 25
            result[25] = numberOfCoins
            totalChanges = totalChanges % 25
        }
        
        if (totalChanges > 10) {
            numberOfCoins = totalChanges / 10
            result[10] = numberOfCoins
            totalChanges = totalChanges % 10
        }
        
        if (totalChanges > 5) {
            numberOfCoins = totalChanges / 5
            result[5] = numberOfCoins
            totalChanges = totalChanges % 5
        }
        
        if (totalChanges > 1) {
           // numberOfCoins = totalChanges
            result[1] = totalChanges
        
        }
    
//    }
    
    return result
}


makeCoins(87)

