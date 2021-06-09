//
//  Calculator.m
//  lesson_five
//
//  Created by Сергей Горячев on 06.05.2021.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"init: счетчик ссылок - 1");
    }
    return self;
}

- (long)sum:(NSInteger)firstValue and:(NSInteger)secondValue {
     return firstValue + secondValue;
}

- (long)subtract:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue - secondValue;
}

- (long)multiplication:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue * secondValue;
}

- (long)divide:(NSInteger)firstValue and:(NSInteger)secondValue {
    if (secondValue == 0){
        return 0;
    } else {
        return firstValue / secondValue;
    }
}

- (long)remainder:(NSInteger)firstValue and:(NSInteger)secondValue {
    if (secondValue == 0){
        return 0;
    } else {
        return firstValue % secondValue;
    }
}

- (long)averageNumber:(NSInteger)firstValue and:(NSInteger)secondValue and:(NSInteger)threeValue {
    return (firstValue + secondValue + threeValue) / 3;
}

- (void)dealloc {
    NSLog(@"dealloc");
    [super dealloc];
}

@end
