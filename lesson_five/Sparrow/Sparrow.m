//
//  Sparrow.m
//  lesson_five
//
//  Created by Сергей Горячев on 07.05.2021.
//

#import "Sparrow.h"

@implementation Sparrow

- (instancetype)initWithSpecies:(NSString *)species {
    self = [super init];
    if(self) {
        [species retain];
        [species release];
        _species = species;
        NSLog(@"Species sparrow - %@", species);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc sparrow - %@", _species);
    [_species release];
    [super dealloc];
}

@end
