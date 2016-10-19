//
//  LCDevice.m
//  ComponentDemo
//
//  Created by Jimmy on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "LCDevice.h"

@implementation LCDevice
{
    NSMutableArray *children;
}
@synthesize deviceId;
@synthesize deviceName;
@synthesize deviceVersion;


- (void)addChild:(id<LCBasicDevice>)child {
    if (children == nil) {
        children = [NSMutableArray new];
    }
    [children addObject:child];
}

- (void)removeChild:(id<LCBasicDevice>)child {
    if ([children containsObject:child]) {
        [children removeObject:child];
    }else {
        [children makeObjectsPerformSelector:@selector(removeChild:) withObject:child];
    }
}

- (id<LCBasicDevice>)childAtIndex:(NSUInteger)index {
    if (index > [children count]) {
        return nil;
    }
    return [children objectAtIndex:index];
}

-(NSString *)channelId {
    return nil;
}

-(void)setChannelId:(NSString *)channelId {

}

- (NSString *)channelName {
    return nil;
}

- (void)setChannelName:(NSString *)channelName {

}

- (NSString *)apId {
    return nil;
}

- (void)setApId:(NSString *)apId {

}

- (NSString *)apName {
    return nil;
}

- (void)setApName:(NSString *)apName {

}

- (NSString *)zbId {
    return nil;
}

- (void)setZbId:(NSString *)zbId {

}

- (NSString *)zbName {
    return nil;
}

- (void)setZbName:(NSString *)zbName {

}

@end
