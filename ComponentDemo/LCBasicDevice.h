//
//  BasicDevice.h
//  ComponentDemo
//
//  Created by Jimmy on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//


#import <UIKit/UIKit.h>

@protocol LCBasicDevice <NSObject>

@property(nonatomic, copy) NSString *deviceId;
@property(nonatomic, copy) NSString *deviceName;
@property(nonatomic, copy) NSString *deviceVersion;

@property(nonatomic, copy) NSString *channelId;
@property(nonatomic, copy) NSString *channelName;

@property(nonatomic, copy) NSString *apId;
@property(nonatomic, copy) NSString *apName;

@property(nonatomic, copy) NSString *zbId;
@property(nonatomic, copy) NSString *zbName;

@property(nonatomic, readonly) id<LCBasicDevice> lastChild;

- (void)addChild:(id<LCBasicDevice>)child;

- (void)removeChild:(id<LCBasicDevice>)child;

- (id<LCBasicDevice>)childAtIndex:(NSUInteger)index;


@end


