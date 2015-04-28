//
//  PRTimeAxisTableViewCell.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisTableViewCell.h"
#import "TopicEntity.h"
#import "UIView+Extras.h"
#import "NSDate+EasyExtend.h"
#import "TopicEntity.h"

#define TimeAxisCellLeft 50.0

@implementation PRTimeAxisTableViewCell


-(NSInteger) getCellHeight
{
//    static int i = 0;
//    i++;
//    if (i%2 == 0) {
//        return 100;
//    }
    return 300;
}

-(void)configureCell:(id)aItems
{
    TopicEntity *topic = (TopicEntity *)aItems;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, APP_SCREEN_WIDTH, [self getCellHeight])];
    view.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:view];
    
    float x=10;
    float y=8;
    float w=36;
    
    //Avatar
    UIImageView *iv = [[UIImageView alloc] initWithFrame:RECT(x, y, w, w)];
    NSString *str = [NSString stringWithFormat:@"%@/?isApi=1/%@", HOST, topic.TheAuthor.Avatar];
    iv = [view buildImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:str]]] frame:RECT(x, y, w, w)];
    iv.layer.masksToBounds=YES;
    iv.layer.borderWidth=0;
    iv.layer.cornerRadius=self.width/2;
    
    // name
    NSString* name = topic.TheAuthor.Username;
    [view buildLabel:name frame:RECT(TimeAxisCellLeft, y-3.5, 180, 20) font:Font(13.5) color:UIColorFromRGB(0x1a1a1a)];

    //time
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[topic.Addtime longLongValue]];
    NSString *time = [date timeAgo];
    [view buildLabel:time frame:RECT(TimeAxisCellLeft,  y-3.5+19, 200, 18) font:Font(12) color:UIColorFromRGB(0x1a1a1a)];
    EZLog(@"aIterms ==> %@", aItems);
    
    NSString *title = topic.Title;
    NSString *content = topic.Content;
//    content = [self newContent:content];
    [view buildContentLabel:title frame:RECT(TimeAxisCellLeft,  y-3.5+19+20, APP_SCREEN_WIDTH-70, 30) font:Font(12) color:UIColorFromRGB(0x1a1a1a)];
    [view buildContentLabel:content frame:RECT(TimeAxisCellLeft,  y-3.5+50, APP_SCREEN_WIDTH-70, 200) font:Font(12) color:UIColorFromRGB(0x1a1a1a)];
}

-(NSString *) newContent:(NSString *)content
{
    RxMatch* match  = [content firstMatchWithDetails:RX(@"<p>")];
    return @"";
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
