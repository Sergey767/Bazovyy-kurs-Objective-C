//
//  Student.m
//  lesson_four
//
//  Created by Сергей Горячев on 26.04.2021.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithAge:(NSInteger)age withName:(NSString *)name withSurname:(NSString *)surname {
    
    self = [super init];
    if (self) {
        studentAge = age;
        self.name = name;
        self.surname = surname;
    }
    return self;
}

@synthesize age = studentAge;

- (NSString *)fullName {
    return [NSString stringWithFormat: @"% @ % @", self.name, self.surname];
}

-(void)increment {
    studentAge += 4;
}

- (void)description {
    NSLog(@"Возраст - %ld", (long)studentAge);
    NSLog(@"Имя - %@", self.name);
    NSLog(@"Фамилия - %@", self.surname);
    NSLog(@"Полное Имя - %@", self.fullName);
}

- (void)dealloc {
    NSLog(@"Объекты уничтожены");
}

@end
