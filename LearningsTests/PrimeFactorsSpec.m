//
//  PrimeFactorsSpec.m
//  Learnings
//
//  Created by Amber Conville on 11/6/14.
//  Copyright (c) 2014 Amber Conville. All rights reserved.
//

#import "Kiwi.h"
#import "PrimeFactors.h"

SPEC_BEGIN(PrimeFactorsSpec)

describe(@"PrimeFactors", ^{
    
    __block PrimeFactors *primeFactors;
    
    beforeEach(^{
        primeFactors = [[PrimeFactors alloc] init];
    });
    
    it(@"returns [] for 1", ^{
        NSArray *factors = [primeFactors factorsOf:1];
        
        [[factors should] equal:@[]];
    });
    
    it(@"returns [2] for 2", ^{
        NSArray *factors = [primeFactors factorsOf:2];
        
        [[factors should] equal:@[@2]];
    });
    
    it(@"returns [3] for 3", ^{
        NSArray *factors = [primeFactors factorsOf:3];
        
        [[factors should] equal:@[@3]];
    });
    
    it(@"returns [2,2] for 4", ^{
        NSArray *factors = [primeFactors factorsOf:4];
        
        [[factors should] equal:@[@2,@2]];
    });
    
    it(@"returns [5] for 5", ^{
        NSArray *factors = [primeFactors factorsOf:5];
        
        [[factors should] equal:@[@5]];
    });
    
    it(@"returns [2, 3] for 6", ^{
        NSArray *factors = [primeFactors factorsOf:6];
        
        [[factors should] equal:@[@2, @3]];
    });
    
    it(@"returns [7] for 7", ^{
        NSArray *factors = [primeFactors factorsOf:7];
        
        [[factors should] equal:@[@7]];
    });
    
    it(@"returns [2, 2, 2] for 8", ^{
        NSArray *factors = [primeFactors factorsOf:8];
        
        [[factors should] equal:@[@2, @2, @2]];
    });
    
    it(@"returns [3, 3] for 9", ^{
        NSArray *factors = [primeFactors factorsOf:9];
        
        [[factors should] equal:@[@3, @3]];
    });
    
});

SPEC_END
