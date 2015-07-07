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
    NSArray *randomNumbers1 = @[@0,@3,@5];
    NSArray *randomNumbers2 = [randomNumbers1 copy];
   
    
//    [randomNumbers1 mapWithOperation:^id(id obj, NSUInteger idx) {
//        [(NSNumber*)obj integerValue] * 5;
//    }];
//    NSArray *randomNumbersMapped = [randomNumbers1 mapWithOperation:^id (id obj) {
//        return [(NSNumber *)obj integerValue] *= 3;
//    }];

    
    NSLog(@"My Array = \n%@", [randomNumbers1 description]);
    
    __block NSMutableArray *results2 = [@[]mutableCopy];
    [randomNumbers2 enumerateObjectsUsingBlock:^(NSNumber *obj, NSUInteger idx, BOOL *stop) {
        results2[idx] = @([(NSNumber*)randomNumbers2 integerValue] * 3);
    }];
    
    NSLog(@"My Array = \n%@", [randomNumbers2 description]);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
