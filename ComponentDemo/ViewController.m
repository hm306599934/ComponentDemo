//
//  ViewController.m
//  ComponentDemo
//
//  Created by Tony on 18/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "ViewController.h"
#import "Dot.h"
#import "Stroke.h"
#import "Vertex.h"

#import "LCDevice.h"
#import "LCChannel.h"
#import "LCAp.h"
#import "LCZb.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    Dot *dot = [Dot new];
//    dot.size = 189;
//    Stroke *stroke = [Stroke new];
//    
//    [stroke addMark:dot];
//    
//    Vertex *vertex = [Vertex new];
//    Stroke *newStroke = [Stroke new];
//    [newStroke addMark:vertex];
//    
//    [stroke addMark:newStroke];
//    
//    id<Mark> d = [stroke childMarkAtIndex:0];
//    id<Mark> c = [stroke childMarkAtIndex:1];
    
    
    LCDevice *device = [LCDevice new];
    
    LCChannel *channel = [LCChannel new];
    channel.channelName = @"channel0";
    
    [device addMark:channel];
    
    LCAp *ap = [LCAp new];
    ap.apName = @"门磁";
    
    [device addMark:ap];
    
    
    LCDevice *nvr = [LCDevice new];
    nvr.deviceName = @"NVR";
    [device addMark:nvr];
    
    id<LCBasicDevice> a = [device childAtIndex:0];
    id<LCBasicDevice> b = [device childAtIndex:1];
    id<LCBasicDevice> c = [device childAtIndex:2];
    
    NSLog(@"123");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
