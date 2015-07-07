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

- (void)mapWithOperation:(void (^)(id obj))block {
    for (id obj in self) {
        block(obj);
    }
}

@end
