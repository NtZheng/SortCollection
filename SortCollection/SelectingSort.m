//
//  SelectingSort.m
//  SortCollection
//
//  Created by Nineteen on 3/25/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "SelectingSort.h"

@implementation SelectingSort

+ (void)selectingSortInArray :(NSMutableArray *)array {
    for (int i = 0; i < array.count; i++) {
        int minIndex = i;
        for (int j = i + 1; j < array.count; j++) {
            if (array[j] < array[minIndex]) {
                minIndex = j;
            }
        }
        [self swapTwoNumbersIndexA:minIndex indexB:i inArray:array];
    }
}

+ (void)swapTwoNumbersIndexA :(int)indexA indexB :(int)indexB inArray :(NSMutableArray *)array{
    id temp = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = temp;
}

@end
