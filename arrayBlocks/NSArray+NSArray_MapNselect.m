//
//  NSArray+NSArray_MapNselect.m
//  arrayBlocks
//
//  Created by Amitai Blickstein on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "NSArray+NSArray_MapNselect.h"
#import "ViewController.h"

@implementation NSArray (NSArray_MapNselect)

- (void)mapWithBlock:(void (^)(id obj))block {
    for (id obj in self) {
        block(obj);
    }
}

- (NSArray *)selectWithBlock:(BOOL (^)(id obj))block {
    NSMutableArray *outArray = [[NSMutableArray alloc] init];
    for (id obj in self) {
        if (block(obj)) {
            [outArray addObject:obj];
        }
    }
    return outArray;
}

@end
