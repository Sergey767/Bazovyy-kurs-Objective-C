//
//  Student+descriptionStudent.m
//  lesson_four
//
//  Created by Сергей Горячев on 28.04.2021.
//

#import "Student+descriptionStudent.h"

@implementation Student (descriptionStudent)

- (void)description {
    NSLog(@"Возраст - %ld \nИмя - %@ \nФамилия - %@ \nПолное Имя - %@", (long)self.age, self.name, self.surname, self.fullName);
}

@end
