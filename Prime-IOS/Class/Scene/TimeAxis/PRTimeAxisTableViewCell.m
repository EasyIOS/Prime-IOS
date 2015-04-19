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
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, APP_SCREEN_WIDTH, [self getCellHeight])];
    backView.backgroundColor = [UIColor clearColor];
    
    float x=10;
    float y=8;
    float w=36;
    
    //Avatar
    UIImageView *iv = [[UIImageView alloc] initWithFrame:RECT(x, y, w, w)];
//    iv.image = [[aItems objectForKey:@"TheAuthor"] objectForKey:@"Avatar"];
    iv.layer.masksToBounds=YES;
    iv.layer.borderWidth=0;
    iv.layer.cornerRadius=self.width/2;
    [self.contentView addSubview:iv];
    
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
