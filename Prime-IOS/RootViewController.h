//
//  ViewController.h
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PRTabBarController;
@interface RootViewController : UIViewController

@property (nonatomic, strong) PRTabBarController *tabBarController;

AS_SINGLETON(RootViewController)

@end

