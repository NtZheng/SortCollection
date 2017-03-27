//
//  main.m
//  SortCollection
//
//  Created by nineteen on 3/24/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubblingSort.h"
#import "SelectingSort.h"
#import "InsertingSort.h"
#import "ShellSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i < 9; i++) {
            int random = arc4random() % 100;
            [array addObject:[NSNumber numberWithInt:random]];
        }
        
        for (NSNumber *number in array) {
            NSLog(@"%@",number);
        }
        
        NSLog(@"-------------");
        
        [ShellSort shellSortInArray:array];
        
        for (NSNumber *number in array) {
            NSLog(@"%@",number);
        }
        
    }
    return 0;
}
