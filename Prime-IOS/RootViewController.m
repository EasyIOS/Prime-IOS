//
//  ViewController.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "RootViewController.h"
#import "PRTabBarController.h"

#import "PRTimeAxisScene.h"
#import "PRMessageScene.h"
#import "PRPersonalScene.h"
#import "PREventScene.h"
#import "YALTabBarItem.h"
#import "YALAnimatingTabBarConstants.h"
#import "PRNavigationController.h"

@interface RootViewController ()

@property (nonatomic, strong) PRNavigationController *timeNavigationController;
@property (nonatomic, strong) PRNavigationController *newsNavigationController;
@property (nonatomic, strong) PRNavigationController *personNavigationController;
@property (nonatomic, strong) PRNavigationController *activityNavigationController;

@end

@implementation RootViewController
@synthesize tabBarController;

- (void)setupYALTabBarController {
    
    _timeNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRTimeAxisScene alloc] init]];

    _newsNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRMessageScene alloc]init]];
    
    _personNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRPersonalScene alloc] init]];
    
    _activityNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PREventScene alloc] init]];
    
    tabBarController = [[PRTabBarController alloc] init];
    
    //prepare leftBarItems
    YALTabBarItem *item1 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"nearby_icon"]
                                                      leftItemImage:nil
                                                     rightItemImage:nil];
    
    
    YALTabBarItem *item2 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"profile_icon"]
                                                      leftItemImage:[UIImage imageNamed:@"edit_icon"]
                                                     rightItemImage:nil];
    
    tabBarController.leftBarItems = @[item1, item2];
    
    //prepare rightBarItems
    YALTabBarItem *item3 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"chats_icon"]
                                                      leftItemImage:[UIImage imageNamed:@"search_icon"]
                                                     rightItemImage:[UIImage imageNamed:@"new_chat_icon"]];
    
    
    YALTabBarItem *item4 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"settings_icon"]
                                                      leftItemImage:nil
                                                     rightItemImage:nil];
    
    tabBarController.rightBarItems = @[item3, item4];
    
    tabBarController.centerButtonImage = [UIImage imageNamed:@"plus_icon"];
    
    //customize tabBarView
    tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight;
    tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
    
    //    tabBarController.tabBarView.backgroundColor = [UIColor colorWithRed:94.0/255.0 green:91.0/255.0 blue:149.0/255.0 alpha:1];
    tabBarController.tabBarView.backgroundColor = [UIColor clearColor];
    
    //    tabBarController.tabBarView.tabBarColor = [UIColor colorWithRed:72.0/255.0 green:211.0/255.0 blue:178.0/255.0 alpha:1];
    
    tabBarController.tabBarView.tabBarColor = UIColorFromRGB(0x34cdff);
    tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
    tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
    tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:_timeNavigationController,_newsNavigationController,_personNavigationController,_activityNavigationController,nil];
    tabBarController.selectedIndex = 2;
    [self.view addSubview:tabBarController.view];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupYALTabBarController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
