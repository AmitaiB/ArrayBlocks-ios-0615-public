//
//  ViewController.m
//  arrayBlocks
//
//  Created by Zachary Drossman on 10/29/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+NSArray_MapNselect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *testArray = @[@1,@2,@3,@4,@5];
    
    __block NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    
#pragma mark - mapWithBlock
        ///The base case, using the baked-in method:
    [testArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [newArray addObject:@([(NSNumber*)obj integerValue] * 3)];
    }];
    NSLog(@"My new array with enumerateObjectsUsingBlocks: %@", [newArray description]);
    
    
        ///The test case, using our new category:
    [newArray removeAllObjects];
    [testArray mapWithBlock:^(id obj) {
        [newArray addObject:@([(NSNumber *)obj integerValue] * 3)]; 
    }];
    
    NSLog(@"My new array with mapWithOperation: %@", [newArray description]);
    
#pragma mark - selectWithBlock

        ///The base case, using a filteredArrayUsingAPredicateThatWeGotFromABlockButSplitIntoTwoSeparateMethodCallsSoItWouldBeLessVerbose.
    NSPredicate *evenPredicate = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        return [evaluatedObject integerValue] % 2 == 0;
    }];
    
    NSArray *filteredResultsArray = [testArray filteredArrayUsingPredicate:evenPredicate];
    
    NSLog(@"My filteredResultArray = %@", [filteredResultsArray description]);
    
        ///The test case, using our new category
    NSArray *filteredResults = [testArray selectWithBlock:^BOOL(id obj) {
        if ([(NSNumber *)obj integerValue] % 2 == 0) {
            return YES; 
        }
        return NO;
    }];
    
    NSLog(@"My filteredResults = %@", [filteredResults description]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
