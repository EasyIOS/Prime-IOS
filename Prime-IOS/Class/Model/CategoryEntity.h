//
//  TheCategoryEntity.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CategoryEntity
@end

@interface CategoryEntity : Model

@property (nonatomic, strong) NSString *Id_;
@property (nonatomic, strong) NSString *Cname;
@property (nonatomic, strong) NSString *Content;
@property (nonatomic, strong) NSString *Keywords;
@property (nonatomic, strong) NSString *Ico;
@property (nonatomic, strong) NSString *Master;

@property (nonatomic, strong) NSString *Permit;
@property (nonatomic, strong) NSString *Listnum;
@property (nonatomic, strong) NSString *Clevel;
@property (nonatomic, strong) NSString *Cord;
@property (nonatomic, strong) NSString *Order;
@property (nonatomic, strong) NSString<Optional> *SubCategories;

@end
