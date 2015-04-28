//
//  TopicEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

//#import "AppendEntity.h"
#import "CategoryEntity.h"
#import "AuthorEntity.h"
#import "RuserEntity.h"

@interface TopicEntity : Model

@property (nonatomic, strong) NSString *Id_;
@property (nonatomic, strong) NSString *Title;
@property (nonatomic, strong) NSString *Keywords;
@property (nonatomic, strong) NSString *Content;
@property (nonatomic, strong) NSString *Secret;
@property (nonatomic, strong) NSString *Addtime;

@property (nonatomic, strong) NSString *Updatetime;
@property (nonatomic, strong) NSString *Lastreply;
@property (nonatomic, strong) NSString *Views;
@property (nonatomic, strong) NSString *Comments;
@property (nonatomic, strong) NSString *Favorites;
@property (nonatomic, strong) NSString *Closecomment;
@property (nonatomic, strong) NSString *IsTop;

@property (nonatomic, strong) NSString<Optional> *Append;
@property (nonatomic, strong) CategoryEntity *TheCategory;
@property (nonatomic, strong) AuthorEntity *TheAuthor;
@property (nonatomic, strong) RuserEntity *TheRuser;
@property (nonatomic, strong) NSString *ShowSecret; //Bool

@end
