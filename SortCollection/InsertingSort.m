//
//  InsertingSort.m
//  SortCollection
//
//  Created by Nineteen on 3/25/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "InsertingSort.h"

@implementation InsertingSort

+ (void)insertingSortInArray :(NSMutableArray *)array {
    for (int i = 1; i < array.count; i++) {
        id temp = array[i];
        if (array[i] < array[i-1]) {
            int j = i -1;
            for (; j >= 0; j--) {
                if (array[j] > temp) {
                    array[j + 1] = array[j];
                } else {
                    break;
                }
            }
            array[j + 1] = temp;
        }
    }
}

+ (void)swapTwoNumbersIndexA :(int)indexA indexB :(int)indexB inArray :(NSMutableArray *)array {
    id temp = array[indexA];
    array[indexA] = array[indexB];
    array[indexB] = temp;
}



@end
