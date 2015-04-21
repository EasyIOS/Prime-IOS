//
//  UIView+Extras.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/20.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "UIView+Extras.h"
#import "UILabel+EasyExtend.h"

@implementation UIView (Extras)

-(UIImageView *) buildImage:(UIImage *)image frame:(CGRect)frame
{
    UIImageView *iv = [[UIImageView alloc] initWithImage:image];
    iv.frame = frame;
    [self addSubview:iv];
    return iv;
}

-(UILabel *) buildLabel:(NSString*)text frame:(CGRect)frame font:(UIFont*)font color:(UIColor*)color
{
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
    label.numberOfLines = 0;
    label.text = text;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = [UIColor clearColor];
    [self addSubview:label];
    return label;
}

-(UILabel *) buildContentLabel:(NSString *)text frame:(CGRect)frame font:(UIFont*)font color:(UIColor*)color
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.numberOfLines = 0;
    label.text = text;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = [UIColor clearColor];
    CGSize size = [label autoSize];
    return label;
}

@end
