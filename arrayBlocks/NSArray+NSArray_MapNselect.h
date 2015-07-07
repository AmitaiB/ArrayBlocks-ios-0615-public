//
//  NSArray+NSArray_MapNselect.h
//  arrayBlocks
//
//  Created by Amitai Blickstein on 7/7/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (NSArray_MapNselect)

- (NSArray *)mapWithOperation:(id (^)(id))block; ///Pass in the array? Make the block return void?


//- (NSArray *)selectWithComparator:(id (^)(<#parameterTypes#>))<#blockName#>;




@end
