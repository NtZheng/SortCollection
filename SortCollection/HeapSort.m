 //
//  HeapSort.m
//  SortCollection
//
//  Created by nineteen on 3/29/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "HeapSort.h"

@implementation HeapSort

+ (void)heapSortInArray :(NSMutableArray *)array {
    for (int i = (int)array.count/2 - 1; i >= 0; i--) {
        [self adjustHeapStartIndex:i endIndex:(int)array.count - 1 array:array];
    }
    for (int i = (int)array.count - 1; i > 0;) {
        [self swapIndexA:i indexB:0 array:array];
        [self adjustHeapStartIndex:0 endIndex:--i array:array];
    }
}

+ (void)adjustHeapStartIndex: (int)startIndex endIndex :(int)endIndex array :(NSMutableArray *)array {
    int current = startIndex;
    for (int leftChild = startIndex * 2 + 1; leftChild <= endIndex; current = leftChild, leftChild = leftChild * 2 + 1) {
        if (leftChild < endIndex && array[leftChild] < array[leftChild + 1]) {
            leftChild++;
        }
        if (array[current] < array[leftChild]) {
            [self swapIndexA:current indexB:leftChild array:array];
        } else {
            break;
        }
    }
}

+ (void)swapIndexA :(int)indexA indexB :(int)indexB array :(NSMutableArray *)array{
    id temp = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = temp;
}

@end
