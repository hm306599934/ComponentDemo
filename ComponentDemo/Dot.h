//
//  Dot.h
//  ComponentDemo
//
//  Created by Tony on 18/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor *color_;
    CGFloat size_;
}

@property(nonatomic, retain) UIColor *color;

@property(nonatomic, assign) CGFloat size;

@end
