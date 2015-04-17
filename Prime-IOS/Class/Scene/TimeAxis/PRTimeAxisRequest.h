//
//  PRTimeAxisRequest.h
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "Request.h"

@interface PRTimeAxisRequest : Request

@property(nonatomic,strong) NSNumber *pageSize;
@property(nonatomic,strong) NSNumber *page;
@property(nonatomic,strong) NSString *tagName;

@end
