//
//  TopicEntity.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "TopicEntity.h"

@implementation TopicEntity

-(instancetype)init{
    self = [super init];
    if(self){
        [self loadModel];
    }
    return self;
}

+(id)Model{
    return [[self alloc]init];
}

-(void)loadModel{
    
}

@end
