//
//  FlockBirds.m
//  lesson_five
//
//  Created by Сергей Горячев on 07.05.2021.
//

#import "FlockBirds.h"
#import "Sparrow.h"
#import "Eagle.h"

@implementation FlockBirds

- (instancetype)init {
    self = [super init];
    if(self) {
        NSLog(@"Create flockBirds");
    }
    return self;
}

- (void)configWithSparrow:(NSArray *)sparrows andEagle:(NSArray *)eagles {
    [sparrows retain];
    [sparrows release];
    _sparrows = sparrows;
    for(Sparrow *sparrow in sparrows) {
        NSLog(@"Add sparrow (%@) for flock birds", sparrow.species);
    }
    
    [eagles retain];
    [eagles release];
    _eagles = eagles;
    for(Eagle *eagle in eagles) {
        NSLog(@"Add eagle (%@) for flock birds", eagle.species);
    }
}

-(void)remove {
    NSLog(@"Remove sparrows and eagles from flock birds");
    for(Sparrow *sparrow in _sparrows) {
        [sparrow release];
    }
    [_sparrows release];
    
    for(Eagle *eagle in _eagles) {
        [eagle release];
    }
    [_eagles release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc flock Birds");
    [super dealloc];
}

@end
