//
//  LCDevice.h
//  ComponentDemo
//
//  Created by Jimmy on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LCBasicDevice.h"

@interface LCDevice : NSObject<LCBasicDevice>

@property(nonatomic, copy) NSString *deviceId;
@property(nonatomic, copy) NSString *deviceName;
@property(nonatomic, copy) NSString *deviceVersion;



@property(nonatomic, readonly) id<LCBasicDevice> lastChild;

- (void)addChild:(id<LCBasicDevice>)child;

- (void)removeChild:(id<LCBasicDevice>)child;

- (id<LCBasicDevice>)childAtIndex:(NSUInteger)index;

@end
