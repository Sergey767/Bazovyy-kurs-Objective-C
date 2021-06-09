//
//  ViewController.m
//  lesson_five
//
//  Created by Сергей Горячев on 06.05.2021.
//

#import "ViewController.h"
#import "Calculator.h"
#import "FlockBirds.h"
#import "Sparrow.h"
#import "Eagle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calculator *calculatorOne = [[Calculator alloc] init];
    [calculatorOne retain];
    
    NSLog(@"Сумма - %ld", [calculatorOne sum:20 and:34]);
    [calculatorOne release];
    
    [calculatorOne retain];
    
    NSLog(@"Выитание - %ld", [calculatorOne subtract:900 and:390]);
    
    [calculatorOne release];
    [calculatorOne retain];
    
    NSLog(@"Умножение - %ld", [calculatorOne multiplication:9 and:10]);
    [calculatorOne release];
    [calculatorOne release];
    
    NSAutoreleasePool *pool;
    pool = [NSAutoreleasePool new];
    
    Calculator *calculatorTwo = [[Calculator alloc] init];
    NSLog(@"Деление - %ld", [calculatorTwo divide:500 and:5]);
    NSLog(@"Остаток от деления - %ld", [calculatorTwo remainder:500 and:235]);
    NSLog(@"Среднее число - %ld", [calculatorTwo averageNumber:30 and:40 and:50]);
    
    [calculatorTwo autorelease];
    
    [pool release];
    
    
    
    FlockBirds *flockBirds = [FlockBirds new];
    
    Sparrow *snowSparrows = [[Sparrow alloc] initWithSpecies:@"Снежные"];
    Sparrow *earthSparrows = [[Sparrow alloc] initWithSpecies:@"Земляные"];
    Sparrow *stoneSparrows = [[Sparrow alloc] initWithSpecies:@"Каменные"];
    
    NSArray *sparrows = [[NSArray alloc] initWithObjects:snowSparrows, earthSparrows, stoneSparrows, nil];
    
    Eagle *berkutEagle = [[Eagle alloc] initWithSpecies:@"Беркут"];
    Eagle *steppeEagle = [[Eagle alloc] initWithSpecies:@"Степной орел"];
    Eagle *hawkEagle = [[Eagle alloc] initWithSpecies:@"Ястребиный орел"];
    
    NSArray *eagles = [[NSArray alloc] initWithObjects:berkutEagle,steppeEagle,hawkEagle, nil];
    
    [flockBirds configWithSparrow:sparrows andEagle:eagles];
    
    [flockBirds release];
}


@end
