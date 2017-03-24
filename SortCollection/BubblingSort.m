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

// 用另外一种思路较为优化的冒泡排序
/*
 * 为什么优：
 * 基本的冒泡：每次只会进行一个数的冒泡
 * 优化的冒泡：每次可能会进行多个数的冒泡
 */
- (void)bullingSortVersionBetter :(NSMutableArray *)array {
    for (int i = 0; i < array.count; i++) {
        for (int j = (int)array.count - 1; j > i; j--) {
            if (array[j] < array[j - 1]) {
                [self swapIndexA:j indexB:j-1 inArray:array];
            }
        }
    }
}

// 改良后的冒泡排序
/*
 * 优化的冒泡存在这样的问题：
 * 假设是升序排序，而被排序的数据本来就是升序的，但是还是会不依不饶地将比较进行下去
 * 解决方式：
 * 设置一个标识，如果在一次比较中，没有一次交换，那么就退出，因为这时已经有序
 */
- (void)bullingSortVersionBetterMore :(NSMutableArray *)array {
    BOOL isSwap = true;
    for (int i = 0; i < array.count && isSwap; i++) {
        
        for (int j = (int)array.count - 1; j > i; j--) {
            
            if (array[j] < array[j - 1]) {
                [self swapIndexA:j indexB:j-1 inArray:array];
                isSwap = true;
            }
            
        }
        
    }
}

@end
