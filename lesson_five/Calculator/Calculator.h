//
//  Calculator.h
//  lesson_five
//
//  Created by Сергей Горячев on 06.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (instancetype)init;

- (long)sum:(NSInteger)firstValue and:(NSInteger)secondValue;
- (long)subtract:(NSInteger)firstValue and:(NSInteger)secondValue;
- (long)multiplication:(NSInteger)firstValue and:(NSInteger)secondValue;
- (long)divide:(NSInteger)firstValue and:(NSInteger)secondValue;
- (long)remainder:(NSInteger)firstValue and:(NSInteger)secondValue;
- (long)averageNumber:(NSInteger)firstValue and:(NSInteger)secondValue and:(NSInteger)threeValue;


@end

NS_ASSUME_NONNULL_END
