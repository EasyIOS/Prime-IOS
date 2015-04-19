//
//  ActionSceneModel.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/18.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "SceneModel.h"

@interface ActionSceneModel : SceneModel

+ (ActionSceneModel *)sharedInstance;

-(void)sendRequest:(Request *)req
           success:(void (^)())successHandler
             error:(void (^)())errorHandler;

@end
