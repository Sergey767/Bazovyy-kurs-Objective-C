//
//  Sparrow.h
//  lesson_five
//
//  Created by Сергей Горячев on 07.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sparrow : NSObject

- (instancetype)initWithSpecies:(NSString *)species;
@property (nonatomic, strong) NSString *species;

@end

NS_ASSUME_NONNULL_END
