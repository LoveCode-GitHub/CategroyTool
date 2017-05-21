//
//  NSArray+HTArrLog.m
//
//  Created by guohaitao on 2017/5/21.
//  Copyright © 2017年 guohaitao. All rights reserved.
//

#import "NSArray+HTArrLog.h"

@implementation NSArray (HTArrLog)
- (NSString *)description{
    NSMutableString * mStr = [NSMutableString string];
    [mStr appendString:@"("];
    
    for (id obj in self) {
        [mStr appendFormat:@"\n\t\"%@\",", obj];
    }
    
//    [mStr appendString:@"\n)"];
    [mStr appendFormat:@"\n) = %ld", self.count];
    
    return mStr;
}

@end
