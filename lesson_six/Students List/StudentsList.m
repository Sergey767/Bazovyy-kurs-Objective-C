//
//  StudentsList.m
//  lesson_six
//
//  Created by Сергей Горячев on 14.05.2021.
//

#import "StudentsList.h"

@implementation StudentsList

+ (NSString *)createListStudents:(NameStudent)nameStudent firstName:(NSString*)firstName withLastName:(NSString *)lastName {
    
    return nameStudent(firstName, lastName);
};

@end
