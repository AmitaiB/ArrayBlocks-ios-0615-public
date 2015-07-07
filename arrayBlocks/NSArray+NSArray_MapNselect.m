//
//  NSArray+NSArray_MapNselect.m
//  arrayBlocks
//
//  Created by Amitai Blickstein on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "NSArray+NSArray_MapNselect.h"

@implementation NSArray (NSArray_MapNselect)

- (NSArray *)mapWithOperation:(id (^)(id obj))operationBlock {
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
        for (NSUInteger i = 0; i < self.count; i++) {
            
//            id (^mappingOutput)(id) = operationBlock
//            (<#parameters#>) {<#code#>};

            [outputArray addObject:[operationBlock copy]];


    }
    return [outputArray copy];
}


@end
