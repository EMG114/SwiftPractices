//: Playground - noun: a place where people can play

import UIKit

//func colorWithHexInt(hexInt: UInt32) -> [CGFloat] {
//    
//    var red = CGFloat((hexInt & 0xff0000) >> 16) / 255.0
//    var green = CGFloat((hexInt & 0xff00) >> 8) / 255.0
//    var blue = CGFloat((hexInt & 0xff) >> 0) / 255.0
//    
//    red = round(red * 100) / 100
//    green = round(green * 100) / 100
//    blue = round(blue * 100) / 100
//    
//    let colorArray = [red, green, blue]
//    
//    return colorArray
//}
//
//colorWithHexInt(0xFFFFFF)
//colorWithHexInt(0x000000)
//colorWithHexInt(0x33BAE7)


func colorWithHexInt(hexInt: UInt32) -> [CGFloat] {
    
    // 0xF 0-F, 0-9, A-F , A->10... F->15, 16 values
    // 0b1 0-1, 2 values
    // 0b1    1 1  1  1 1 1 1
    //   128 64 32 16 8 4 2 1
    // 0xF == 0b1111
    
    // 0b1111 >> 1 => 0b111
    // 0b1111 >> 2 => 0b11
    // 0xF == 0b1111
    // 0xFF >> 4 => 0xF
    
    
    // 0b1010
    //&0b1100
    // 0b1000
    
    // 0bUIOP
    //&0b0100
    // 0b0I00
    
    var red = CGFloat((hexInt & 0xff0000) >> 16) / 255.0
    
    // 0xRRGGBB => 0x00GG00 => 0xGG
    
    var green = CGFloat((hexInt & 0xff00) >> 8) / 255.0
    
    // 0xRRGGBB & 0x0000FF => 0x0000BB
    // 0b....BBBBBBBB
    
    // 0b11111111
    
    var blue = CGFloat((hexInt & 0xff) >> 0) / 255.0
    
    
    
    red = round(red * 100) / 100
    
    green = round(green * 100) / 100
    
    blue = round(blue * 100) / 100
    
    
    
    let colorArray = [red, green, blue]
    
    
    
    return colorArray
    
}

colorWithHexInt(0xFFFFFF)
colorWithHexInt(0x000000)
colorWithHexInt(0x33BAE7)



