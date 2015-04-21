//
//  UIView+Extras.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/20.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extras)

-(UIImageView *) buildImage:(UIImage *)image frame:(CGRect)frame;
-(UILabel*) buildLabel:(NSString*)text frame:(CGRect)frame font:(UIFont*)font color:(UIColor*)color;
-(UILabel *) buildContentLabel:(NSString *)text frame:(CGRect)frame font:(UIFont*)font color:(UIColor*)color;

@end
