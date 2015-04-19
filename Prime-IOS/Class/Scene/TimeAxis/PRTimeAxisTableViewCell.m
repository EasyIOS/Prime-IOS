//
//  PRTimeAxisTableViewCell.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisTableViewCell.h"
#import "TopicEntity.h"

@implementation PRTimeAxisTableViewCell


-(NSInteger) getCellHeight
{
    return 50;
}

-(void)configureCell:(id)aItems
{
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, PScreenWidth, [self getCellHeight])];
    for (int i = 0; i < [aItems count]; i++) {
        
    }
    EZLog(@"aIterms ==> %@", aItems);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
