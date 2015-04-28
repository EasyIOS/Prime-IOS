//
//  AuthorEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "Model.h"

@interface AuthorEntity : Model

@property (nonatomic, strong) NSString *eId;
@property (nonatomic, strong) NSString *uId;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *openid;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *avatar;

@property (nonatomic, strong) NSString *homepage;
@property (nonatomic, strong) NSString *money;
@property (nonatomic, strong) NSString *signature;
@property (nonatomic, strong) NSString *forums;
@property (nonatomic, strong) NSString *notices;
@property (nonatomic, strong) NSString *follows;

@property (nonatomic, strong) NSString *favorites;
@property (nonatomic, strong) NSString *replies;
@property (nonatomic, strong) NSString *regtime;
@property (nonatomic, strong) NSString *lastlogin;
@property (nonatomic, strong) NSString *lastpost;
@property (nonatomic, strong) NSString *github;

@property (nonatomic, strong) NSString *groupType;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) NSString *introduction;
@property (nonatomic, strong) NSString *isActive;
@property (nonatomic, strong) NSString *receiveNotify; //Bool


@end
