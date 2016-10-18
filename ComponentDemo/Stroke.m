//
//  Stroke.m
//  ComponentDemo
//
//  Created by Tony on 18/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = color_, size = size_;
@dynamic location;

- (instancetype)init {
    if (self = [super init]) {
        children_ = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

-(void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if ([children_ count] > 0) {
        
        return [(id<Mark>)[children_ objectAtIndex:0] location];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {

    [children_ addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([children_ containsObject:mark]) {
        [children_ removeObject:mark];
    }else {
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index > [children_ count]) {
        return nil;
    }
    return [children_ objectAtIndex:index];
}

- (id<Mark>)lastChild {
    return [children_ lastObject];
}

- (NSUInteger)count {
    return [children_ count];
}





@end
