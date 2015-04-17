//
//  PRTimeAxisSceneModel.h
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "SceneModel.h"
#import "PRTimeAxisRequest.h"

@interface PRTimeAxisSceneModel : SceneModel

@property (nonatomic, strong) PRTimeAxisRequest *timeAxisRequest;
@property(nonatomic,retain) NSMutableArray *tagList;

@end
