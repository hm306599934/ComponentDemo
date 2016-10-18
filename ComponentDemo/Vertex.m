//
//  Vertex.m
//  ComponentDemo
//
//  Created by Tony on 18/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

@synthesize location = location_;
@dynamic color, size;

- (id)initWithLocation:(CGPoint)location {
    if (self = [super init]) {
        [self setLocation:location];
    }
    return self;
}

- (void)setColor:(UIColor *)color {

}

-(UIColor *)color {
    return nil;
}

-(void)setSize:(CGFloat)size {
    
}

-(CGFloat)size {
    return 0.0;
}

- (void)addMark:(id<Mark>)mark{

}

- (void)removeMark:(id<Mark>)mark{

}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index{
    return nil;
}

- (id<Mark>)lastChild {
    return nil;
}

-(NSUInteger)count {
    return 0;
}

@end
