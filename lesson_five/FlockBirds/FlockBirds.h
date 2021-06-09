//
//  FlockBirds.h
//  lesson_five
//
//  Created by Сергей Горячев on 07.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlockBirds : NSObject

- (void)configWithSparrow:(NSArray *)sparrows andEagle:(NSArray *)eagles;

@property (nonatomic, strong) NSArray *sparrows;
@property (nonatomic, strong) NSArray *eagles;

@end

NS_ASSUME_NONNULL_END
