//
//  QuickSort.m
//  SortCollection
//
//  Created by nineteen on 3/31/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

+ (void)quickSortInArray :(NSMutableArray *)array {
    [self quickSortWithStartIndex:0 endIndex:(int)array.count - 1 array:array];
}

+ (void)quickSortWithStartIndex :(int)start endIndex :(int)end array :(NSMutableArray *)array {
    if (start < end) {
        int middle = [self partitionWithStartIndex:start endIndex:end array:array];
        [self quickSortWithStartIndex:start endIndex:middle - 1 array:array];
        [self quickSortWithStartIndex:middle + 1 endIndex:end array:array];
    }
}

+ (int)partitionWithStartIndex :(int)start endIndex :(int)end array :(NSMutableArray *)array {
    
    id flag = array[start];
    int i = start;
    int j = end;
    
    while (i < j) {
        while (array[j] > flag && j > i) {
            j--;
        }
        [self swapTwoNumberIndexA:i indexB:j array:array];
        while (array[i] < flag && i < j) {
            i++;
        }
        [self swapTwoNumberIndexA:i indexB:j array:array];
    }
    
    return i;
}

+ (void)swapTwoNumberIndexA :(int)indexA indexB :(int)indexB array :(NSMutableArray *)array {
    id temp = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = temp;
}

@end
