//
//  Eagle.m
//  lesson_five
//
//  Created by Сергей Горячев on 07.05.2021.
//

#import "Eagle.h"

@implementation Eagle

- (instancetype)initWithSpecies:(NSString *)species {
    self = [super init];
    if(self) {
        [species retain];
        [species release];
        _species = species;
        NSLog(@"Species eagle - %@", species);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Eagle - %@", _species);
    [_species release];
    [super dealloc];
}

@end
