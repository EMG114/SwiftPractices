//: Playground - noun: a place where people can play

import UIKit

func colorWithHexInt(hexInt: UInt32) -> [CGFloat] {
    
    var red = CGFloat((hexInt & 0xff0000) >> 16) / 255.0
    var green = CGFloat((hexInt & 0xff00) >> 8) / 255.0
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



