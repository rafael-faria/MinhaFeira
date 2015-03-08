//
//  UIViewController+VideoController.m
//  MinhaFeira
//
//  Created by João Vitor P. Moraes on 3/8/15.
//  Copyright (c) 2015 Rafael Alexandre Faria. All rights reserved.
//

#import "VideoController.h"
#import <AVKit/AVKit.h>
@import AVFoundation;

@interface VideoController ()

@end

@implementation VideoController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *stringPath = [[NSBundle mainBundle]pathForResource:@"encontre" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];

    AVPlayer *player=[[AVPlayer alloc]initWithURL:url];
    self.player = player;
}
@end
