//
//  PRFeedRequest.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/18.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRFeedRequest.h"

@implementation PRFeedRequest

-(void)loadRequest{
    [super loadRequest];
    self.PATH = @"/?isApi=1";
    self.METHOD = @"GET";
}

@end
