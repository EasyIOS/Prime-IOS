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
#import "PRTabBarIterm.h"
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

DEF_SINGLETON(RootViewController)

- (void)setupYALTabBarController {
    
    _timeNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRTimeAxisScene alloc] init]];

    _newsNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRMessageScene alloc]init]];
    
    _activityNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PREventScene alloc] init]];
    
    _personNavigationController = [[PRNavigationController alloc] initWithRootViewController:[[PRPersonalScene alloc] init]];
    
    
    
    tabBarController = [[PRTabBarController alloc] init];
    
    //prepare leftBarItems
    PRTabBarIterm *item1 = [[PRTabBarIterm alloc] initWithItemImage:[UIImage imageNamed:@"nearby_icon"]
                                                      leftItemImage:[UIImage imageNamed:@"search_icon"]
                                                     rightItemImage:[UIImage imageNamed:@"new_chat_icon"]];
    
    
    PRTabBarIterm *item2 = [[PRTabBarIterm alloc] initWithItemImage:[UIImage imageNamed:@"profile_icon"]
                                                      leftItemImage:nil
                                                     rightItemImage:nil];
    
    tabBarController.leftBarItems = @[item1, item2];
    
    //prepare rightBarItems
    PRTabBarIterm *item3 = [[PRTabBarIterm alloc] initWithItemImage:[UIImage imageNamed:@"chats_icon"]
                                                      leftItemImage:nil
                                                     rightItemImage:nil];
    
    
    PRTabBarIterm *item4 = [[PRTabBarIterm alloc] initWithItemImage:[UIImage imageNamed:@"settings_icon"]
                                                      leftItemImage:[UIImage imageNamed:@"edit_icon"]
                                                     rightItemImage:nil];
    
    tabBarController.rightBarItems = @[item3, item4];
    
    
    tabBarController.centerButtonImage = [UIImage imageNamed:@"plus_icon"];
    
    //customize tabBarView
    tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight;
    tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
    tabBarController.tabBarView.backgroundColor = [UIColor clearColor];
    tabBarController.tabBarView.tabBarColor = UIColorFromRGB(0x34cdff);
    tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
    tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
    tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:_timeNavigationController,_newsNavigationController,_activityNavigationController,_personNavigationController,nil];
    tabBarController.selectedIndex = 0;
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
