//
//  PRTimeAxisSceneModel.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisSceneModel.h"

@implementation PRTimeAxisSceneModel

/**
 *   初始化加载SceneModel
 */
-(void)loadSceneModel{
    
    [super loadSceneModel];
    [self.action useCache];
//    self.list = nil;
    self.topicList =  [NSMutableArray array];

    @weakify(self);
    _timeAxisRequest = [PRTimeAxisRequest RequestWithBlock:^{  // 初始化请求回调
        @strongify(self)
        [self SEND_CACHE_ACTION:self.timeAxisRequest];
    }];
    
    [[RACObserve(_timeAxisRequest, state) //监控 网络请求的状态
      filter:^BOOL(NSNumber *state) { //过滤请求状态
          @strongify(self);
          return self.timeAxisRequest.succeed;
      }]
     subscribeNext:^(NSNumber *state) {
         @strongify(self);
         NSError *error;
        self.topicEntityList = [[TopicEntityList alloc] initWithDictionary:[_timeAxisRequest.output objectAtPath:@"Data"]
                                                                     error:&error];
     }];
}

@end
