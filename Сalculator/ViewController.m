//
//  ViewController.m
//  Сalculator
//
//  Created by Сергей Горячев on 26.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize titleLabel, sumFirstNumberTextField, sumSecondNumberTextField, sumResultLabel, subtractionFirstNumberTextField, subtractionSecondNumberTextField, subtractionResultLabel, multiplicationFirstNumberTextField, multiplicationSecondNumberTextField, multiplicationResultLabel, divideFirstNumberTextField, divideSecondNumberTextField, divideResultLabel, remainderFirstNumberTextField, remainderSecondNumberTextField, remainderResultLabel, averageNumberLabel, averageFirstNumberTextField, averageSecondNumberTextField, averageThreeNumberTextField, averageResultLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    titleLabel.text = @"Введите числа в поля";
    averageNumberLabel.text = @"Cреднее число";
    sumResultLabel.text = @"Сложение";
    subtractionResultLabel.text = @"Вычитание";
    multiplicationResultLabel.text = @"Умножение";
    divideResultLabel.text = @"Деление";
    remainderResultLabel.text = @"остаток от деления";
}


- (IBAction)resultButton:(id)sender {
    NSInteger sumResult = [sumFirstNumberTextField.text intValue] + [sumSecondNumberTextField.text intValue];
    sumResultLabel.text = [NSString stringWithFormat:@"сумма = %ld", (long)sumResult];
    
    NSInteger subtractionResult = [subtractionFirstNumberTextField.text intValue] - [subtractionSecondNumberTextField.text intValue];
    subtractionResultLabel.text = [NSString stringWithFormat:@"вычитание = %ld", (long)subtractionResult];
    
    NSInteger multiplicationResult = [multiplicationFirstNumberTextField.text intValue] * [multiplicationSecondNumberTextField.text intValue];
    multiplicationResultLabel.text = [NSString stringWithFormat:@"умножение = %ld", (long)multiplicationResult];
    
    NSInteger divideResult = [divideFirstNumberTextField.text intValue] / [divideSecondNumberTextField.text intValue];
    divideResultLabel.text = [NSString stringWithFormat:@"деление = %ld", (long)divideResult];
    
    NSInteger remainderResult = [remainderFirstNumberTextField.text intValue] % [remainderSecondNumberTextField.text intValue];
    remainderResultLabel.text = [NSString stringWithFormat:@"остаток от деления = %ld", (long)remainderResult];

    NSInteger averageResult = ([averageFirstNumberTextField.text intValue] + [averageSecondNumberTextField.text intValue] + [averageThreeNumberTextField.text intValue]) / 3;
    averageResultLabel.text = [NSString stringWithFormat:@"среднее число = %ld", (long)averageResult];
    
    NSLog(@"Сумма = %li, Вычитание = %li, Умножение = %li, Деление = %li, Остаток от деления = %li, среднее число = %li", (long)sumResult, (long)subtractionResult, (long)multiplicationResult, (long)divideResult, (long)remainderResult, (long)averageResult);
}

@end
