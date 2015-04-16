//
//  PRDatasource.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^PRDatasourceCellBlock)(id cell, id item);

@interface PRDatasource : NSObject

-(id) initWithItem:(NSArray *)aItem
    cellIdentifier:(NSString *)aIdentifier
cellConfigureBlock:(PRDatasourceCellBlock)cellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
