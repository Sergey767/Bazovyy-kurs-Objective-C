//
//  ViewController.m
//  lesson_four
//
//  Created by Сергей Горячев on 26.04.2021.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *studentOne = [[Student alloc] initWithAge:23 withName:@"Дмитрий" withSurname:@"Сидоров"];
    Student *studentTwo = [[Student alloc] initWithAge:18 withName:@"Сергей" withSurname:@"Головин"];
    Student *studentThree = [[Student alloc] initWithAge:23 withName:@"Анастасия" withSurname:@"Рычкова"];
    
    [studentOne increment];
    [studentTwo increment];
    
    [studentOne description];
    [studentTwo description];
    [studentThree description];
    
    studentOne = nil;
    studentTwo = nil;
    studentThree = nil;
}


@end
