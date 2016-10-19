//
//  LCChannel.h
//  ComponentDemo
//
//  Created by Jimmy on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LCDevice.h"

@interface LCChannel : LCDevice

@property(nonatomic, copy) NSString *channelId;

@property(nonatomic, copy) NSString *channelName;

@end
