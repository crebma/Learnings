//
//  PrimeFactors.m
//  Learnings
//
//  Created by Amber Conville on 11/6/14.
//  Copyright (c) 2014 Amber Conville. All rights reserved.
//

#import "PrimeFactors.h"

@implementation PrimeFactors

-(NSArray *)factorsOf:(int)number {
    NSArray *factors = @[];
    for(int candidate = 2; number > 1; candidate++) {
        for(; number % candidate == 0; number /= candidate) {
            factors = [factors arrayByAddingObject:[NSNumber numberWithInt:candidate]];
        }
    }
    return factors;
}

@end
