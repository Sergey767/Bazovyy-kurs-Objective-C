//
//  Student.h
//  lesson_four
//
//  Created by Сергей Горячев on 26.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) NSInteger age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong, readonly) NSString *fullName;

- (instancetype)initWithAge:(NSInteger)age withName:(NSString *)name withSurname:(NSString *)surname;

-(void)increment;
- (void)description;

@end

NS_ASSUME_NONNULL_END
