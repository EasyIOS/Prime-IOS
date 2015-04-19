//
//  ActionSceneModel.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/18.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "ActionSceneModel.h"

@implementation ActionSceneModel

+ (ActionSceneModel *)sharedInstance{
    GCDSharedInstance(^{ return [self SceneModel]; });
}

-(void)sendRequest:(Request *)req
           success:(void (^)())successHandler
             error:(void (^)())errorHandler{
    
    [RACObserve(req, state) //监控 网络请求的状态
     subscribeNext:^(NSNumber *state) {
         if(req.succeed && successHandler){
             successHandler();
         }else if (req.failed && errorHandler){
             errorHandler();
         }
     }];
    [self SEND_NO_CACHE_ACTION:req];
}


@end
