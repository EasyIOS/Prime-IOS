//
//  AuthorEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "Model.h"

@protocol AuthorEntity
@end

@interface AuthorEntity : Model

@property (nonatomic, strong) NSString *Id_;
@property (nonatomic, strong) NSString *Uid;
@property (nonatomic, strong) NSString *Username;
@property (nonatomic, strong) NSString<Optional> *Openid;
@property (nonatomic, strong) NSString<Optional> *Email;
@property (nonatomic, strong) NSString<Optional> *Avatar;

@property (nonatomic, strong) NSString<Optional> *Homepage;
@property (nonatomic, strong) NSString<Optional> *Money;
@property (nonatomic, strong) NSString<Optional> *Signature;
@property (nonatomic, strong) NSString<Optional> *Forums;
@property (nonatomic, strong) NSString<Optional> *Notices;
@property (nonatomic, strong) NSString<Optional> *Follows;

@property (nonatomic, strong) NSString<Optional> *Favorites;
@property (nonatomic, strong) NSString<Optional> *Replies;
@property (nonatomic, strong) NSString<Optional> *Regtime;
@property (nonatomic, strong) NSString<Optional> *Lastlogin;
@property (nonatomic, strong) NSString<Optional> *Lastpost;
@property (nonatomic, strong) NSString<Optional> *Github;

@property (nonatomic, strong) NSString<Optional> *GroupType;
@property (nonatomic, strong) NSString<Optional> *Location;
@property (nonatomic, strong) NSString<Optional> *Token;
@property (nonatomic, strong) NSString<Optional> *Introduction;
@property (nonatomic, strong) NSString<Optional> *IsActive;
@property (nonatomic, strong) NSString<Optional> *ReceiveNotify; //Bool


@end
