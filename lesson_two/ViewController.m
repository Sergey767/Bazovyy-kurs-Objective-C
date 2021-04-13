//
//  ViewController.m
//  lesson_two
//
//  Created by Сергей Горячев on 27.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Задание 1
    NSString *stringAlphabet = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    if ([self doesStringAlphabet:stringAlphabet containString:@"г"])
        NSLog(@"Буква входит в английский алфавит");
    else
        NSLog(@"Буква не входит в английский алфавит");

    if ([self doesStringAlphabet:stringAlphabet containString:@"w"])
        NSLog(@"Буква входит в английский алфавит");
    else
        NSLog(@"Буква не входит в английский алфавит");
    
    // Задание 2
//    NSLog(@"%f", [self sum:15 and:30]);
//    NSLog(@"%f", [self subtract:90 and:36]);
//    NSLog(@"%f", [self multiplication:200 and:5]);
//    NSLog(@"%f", [self divide:190 and:5]);
//    NSLog(@"%f", [self remainder:8 and:4]);
//    NSLog(@"%f", [self averageNumber:45 and:45 and:60]);
}


// Задание 1: Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.
- (BOOL)doesStringAlphabet:(NSString *)stringAlphabet containString: (NSString *)string {
    return [stringAlphabet rangeOfString:[NSString stringWithFormat:@"%@", string]].location != NSNotFound;
}

// Задание 2: Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление).
- (CGFloat)sum:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue + secondValue;
}

- (CGFloat)subtract:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue - secondValue;
}

- (CGFloat)multiplication:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue * secondValue;
}

- (CGFloat)divide:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue / secondValue;
}

- (CGFloat)remainder:(NSInteger)firstValue and:(NSInteger)secondValue {
    return firstValue % secondValue;
}

- (CGFloat)averageNumber:(NSInteger)firstValue and:(NSInteger)secondValue and:(NSInteger)threeValue {
    return (firstValue + secondValue + threeValue) / 3;
}

@end
