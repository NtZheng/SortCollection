//
//  MergeSort.m
//  SortCollection
//
//  Created by nineteen on 3/30/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

+ (void)mergeSortInArray :(NSMutableArray *)array {
    [self mergeRecurseWithStartIndex:0 endIndex:(int)array.count - 1 array:array];
}

+ (void)mergeRecurseWithStartIndex :(int)start endIndex :(int)end array :(NSMutableArray *)array {
    if (start < end) {
        int middle = (start + end)/2;
        [self mergeRecurseWithStartIndex:start endIndex:middle array:array];
        [self mergeRecurseWithStartIndex:middle + 1 endIndex:end array:array];
        [self mergeCombinateWithStartIndex:start middleIndex:middle endIndex:end array:array];
    }
}

+ (void)mergeCombinateWithStartIndex :(int)start middleIndex :(int)middle endIndex :(int)end array :(NSMutableArray *)array {
    NSMutableArray *tempArray = [NSMutableArray array];
    int i = start;
    int j = middle + 1;
    while (i <= middle && j <= end) {
        
        if (array[i] < array[j]) {
            [tempArray addObject:array[i++]];
        } else if(array[i] == array[j]){
            [tempArray addObject:array[i++]];
            [tempArray addObject:array[j++]];
        } else if(array[i] > array[j]){
            [tempArray addObject:array[j++]];
        } else {
            
        }
        
    }
    
    while (i <= middle) {
        [tempArray addObject:array[i++]];
    }
    while (j <= end) {
        [tempArray addObject:array[j++]];
    }
    
    for (id temp in tempArray) {
        array[start++] = temp;
    }
}

@end
