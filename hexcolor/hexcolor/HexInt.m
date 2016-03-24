//
//  HexInt.m
//  hexcolor
//
//  Created by Xiulan Shi on 3/21/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "HexInt.h"

@implementation HexInt

- (NSArray *)getArrayFromHexInt:(UInt32)hexInt
{
    
    CGFloat red = ((CGFloat) ((hexInt & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((CGFloat) ((hexInt & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((CGFloat) (hexInt & 0xFF)) / 255.0;
    
    red = round(red * 100) / 100;
    green = round(green * 100) / 100;
    blue = round(blue * 100) / 100;
    
    NSArray *colorArray = @[[NSNumber numberWithFloat:red],
                            [NSNumber numberWithFloat:green],
                            [NSNumber numberWithFloat:blue]];
    
    return colorArray;
    
}



@end
