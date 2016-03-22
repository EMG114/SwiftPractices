//
//  HexInt.h
//  hexcolor
//
//  Created by Xiulan Shi on 3/21/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HexInt : NSObject

@property UInt32 hex;

- (NSArray *)getArrayFromHexInt:(UInt32)hexInt;

@end
