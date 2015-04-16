//
//  TopicEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppendEntity.h"
#import "CategoryEntity.h"
#import "AuthorEntity.h"
#import "RuserEntity.h"

@interface TopicEntity : NSObject

@property (nonatomic, strong) NSString *eId;
@property (nonatomic, strong) NSString *topicTitle;
@property (nonatomic, strong) NSString *topicKeywords;
@property (nonatomic, strong) NSString *topicContent;
@property (nonatomic, strong) NSString *secret;
@property (nonatomic, strong) NSString *addtime;

@property (nonatomic, strong) NSString *updatetime;
@property (nonatomic, strong) NSString *lastreply;
@property (nonatomic, strong) NSString *views;
@property (nonatomic, strong) NSString *comments;
@property (nonatomic, strong) NSString *favorites;
@property (nonatomic, strong) NSString *closecomment;
@property (nonatomic, strong) NSString *isTop;

@property (nonatomic, strong) AppendEntity *appendEntity;
@property (nonatomic, strong) CategoryEntity *categoryEntity;
@property (nonatomic, strong) AuthorEntity *authorEntity;
@property (nonatomic, strong) RuserEntity *ruserEntity;
@property (nonatomic, strong) NSString *showSecret; //Bool

@end
