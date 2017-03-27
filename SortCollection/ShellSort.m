//
//  ShellSort.m
//  SortCollection
//
//  Created by nineteen on 3/27/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "ShellSort.h"

@implementation ShellSort

+ (void)shellSortInArray :(NSMutableArray *)array {
    int increment = (int)array.count / 3;
    while (increment >= 1) {
        for (int i = increment; i < array.count; i++) {
            id temp = array[i];
            int j = i - increment;
            for (; j >= 0 && array[j] > temp; j-=increment) {
                array[j + increment] = array[j];
            }
            array[j + increment] = temp;
        }
        increment = increment / 3;
    }
}

@end
