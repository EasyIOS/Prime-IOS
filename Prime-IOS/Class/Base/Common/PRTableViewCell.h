//
//  PRTableViewCell.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PRTableViewCell : UITableViewCell

@end

@interface PRTableViewCell (configureCell)

-(int) getCellHeight;
- (void)configureCell:(id)aItems;

@end
