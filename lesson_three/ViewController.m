//
//  ViewController.m
//  lesson_three
//
//  Created by Сергей Горячев on 11.04.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Задание 1: Создать массив строк и вывести его в консоль используя цикл.
    NSArray *arrayCarsGermany = [NSArray arrayWithObjects:@"Audi", @"BMW", @"Volkswagen", @"Porsche", nil];

    NSArray *arrayCarsRussia = @[@"LADA", @"ВОЛГА", @"ЗИЛ", @"МОСКВИЧ"];

    for (NSString *car in arrayCarsGermany) {
        NSLog(@"%@", car);
    }

    NSInteger i = 0;
    while (i < arrayCarsRussia.count) {
        NSLog(@"%@", [arrayCarsRussia objectAtIndex:i]);
        i++;
    }

    NSInteger cars = 0;
    do {
        NSLog(@"%@", [arrayCarsGermany objectAtIndex:cars]);
        cars++;
    } while (cars < arrayCarsGermany.count);
    
    
    NSLog(@"%f", [self calculate:operationSum and:15 and:20]);
    NSLog(@"%f", [self calculate:operationSubtract and:40 and:16]);
    NSLog(@"%f", [self calculate:operationMultiplication and:300 and:5]);
    NSLog(@"%f", [self calculate:operationDivide and:600 and:300]);
    NSLog(@"%f", [self calculate:operationRemainder and:496 and:43]);
    
    NSLog(@"oneHuman: \n name %@, \n age %ld, \n gander %ld", oneHuman.name, (long)oneHuman.age, (long)oneHuman.gander);
    NSLog(@"twoHuman: \n name %@, \n age %ld, \n gander %ld", twoHuman.name, (long)twoHuman.age, (long)twoHuman.gander);
    NSLog(@"threeHuman: \n name %@, \n age %ld, \n gander %ld", threeHuman.name, (long)threeHuman.age, (long)threeHuman.gander);
    NSLog(@"fourHuman: \n name %@, \n age %ld, \n gander %ld", fourHuman.name, (long)fourHuman.age, (long)fourHuman.gander);
}

// Задание 2: Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.
enum Operation {
    operationSum,
    operationSubtract,
    operationMultiplication,
    operationDivide,
    operationRemainder
};

typedef enum Operation Operation;

-(CGFloat)calculate:(Operation)operation and:(NSInteger)firstValue and:(NSInteger)secondValue {
    switch (operation) {
        case operationSum:
            return firstValue + secondValue;
        case operationSubtract:
            return firstValue - secondValue;
        case operationMultiplication:
            return firstValue * secondValue;
        case operationDivide:
            if (secondValue == 0){
                return 0;
            } else {
                return firstValue / secondValue;
            }
        case operationRemainder:
            if (secondValue == 0){
                return 0;
            } else {
                return firstValue % secondValue;
            }
        default:
            break;
    }
}

// Задание 3: Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gander”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.

NS_ENUM(NSInteger, Gander) {
    married,
    notMarried
};

struct Human {
    NSString *name;
    NSInteger age;
    enum Gander gander;
};

typedef struct Human Human;

Human oneHuman = { @"Alex", 30, notMarried };
Human twoHuman = { @"Sophie", 24, married };
Human threeHuman = { @"Harry", 43, married };
Human fourHuman = { @"Jessica", 17, notMarried };

@end
