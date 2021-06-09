//
//  StudentsList.h
//  lesson_six
//
//  Created by Сергей Горячев on 14.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString*(^NameStudent) (NSString* firstName, NSString* lastName);
typedef void(^displayStudentName) (void);
typedef NSString*(^NameStudentBlock) (NSString*, NSString*);

@interface StudentsList : NSObject

+ (NSString *)createListStudents:(NameStudent)nameStudent firstName:(NSString*)firstName withLastName:(NSString *)lastName;
@end

NS_ASSUME_NONNULL_END
