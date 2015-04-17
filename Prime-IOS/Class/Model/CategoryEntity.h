//
//  TheCategoryEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CategoryEntity : NSObject

@property (nonatomic, strong) NSString *eId;
@property (nonatomic, strong) NSString *cname;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *keywords;
@property (nonatomic, strong) NSString *ico;
@property (nonatomic, strong) NSString *master;

@property (nonatomic, strong) NSString *permitted;
@property (nonatomic, strong) NSString *listnum;
@property (nonatomic, strong) NSString *clevel;
@property (nonatomic, strong) NSString *cord;
@property (nonatomic, strong) NSString *order;
@property (nonatomic, strong) NSString *subCategories;

@end
