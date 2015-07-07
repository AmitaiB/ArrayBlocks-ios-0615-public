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
    
    NSArray *testArray = @[@1,@3,@5,@7,@9];
    
    __block NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    [testArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [newArray addObject:@([(NSNumber*)obj integerValue] * 3)];
    }];
    NSLog(@"My new array with enumerateObjectsUsingBlocks: %@", [newArray description]);
    
    [newArray removeAllObjects];
    [testArray mapWithOperation:^(id obj) {
        [newArray addObject:@([(NSNumber *)obj integerValue] * 3)]; 
    }];
    
    NSLog(@"My new array with mapWithOperation: %@", [newArray description]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
