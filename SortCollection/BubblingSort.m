//
//  BubblingSort.m
//  SortCollection
//
//  Created by nineteen on 3/24/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "BubblingSort.h"

@implementation BubblingSort

// 交换两个数
- (void)swapIndexA :(int)indexA indexB:(int)indexB inArray :(NSMutableArray *)array{
    id temp = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = temp;
}

// 最基本的冒泡排序
- (void)bullingSortVersionSimple :(NSMutableArray *)array {
    for (int i = 0; i < array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if (array[i] > array[j]) {
                [self swapIndexA:i indexB:j inArray:array];
            }
        }
    }
}

@end
