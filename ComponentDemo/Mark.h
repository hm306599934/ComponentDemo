//
//  Mark.h
//  ComponentDemo
//
//  Created by Tony on 18/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Mark <NSObject>

@property(nonatomic, retain) UIColor *color;
@property(nonatomic, assign) CGFloat size;
@property(nonatomic, assign) CGPoint location;
@property(nonatomic, readonly) NSUInteger count;
@property(nonatomic, readonly) id<Mark> lastChild;

- (void)addMark:(id<Mark>)mark;

- (void)removeMark:(id<Mark>)mark;

- (id<Mark>)childMarkAtIndex:(NSUInteger)index;


@end

