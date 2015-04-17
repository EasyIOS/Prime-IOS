//
//  Aspect-Window.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/17.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "AppDelegate.h"
#import <XAspect/XAspect.h>
#import "RootViewController.h"
#import "DataCenter.h"

#define AtAspect Window

#define AtAspectOfClass AppDelegate
@classPatchField(AppDelegate)
AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    
    self.database = [[AppDatabase alloc] initWithMigrations];
    
    [Action actionConfigHost:HOST client:@"prime-ios" codeKey:@"code" rightCode:0 msgKey:@"Msg"];
    [$ swizzleClassMethod:@selector(objectAtIndex:) with:@selector(safeObjectAtIndex:) in:[NSArray class]];
    
    self.window.rootViewController = [RootViewController sharedInstance];
    [self.window makeKeyAndVisible];
    
    [[$ rac_didNetworkChanges]
     subscribeNext:^(NSNumber *status) {
         AFNetworkReachabilityStatus networkStatus = [status intValue];
         switch (networkStatus) {
             case AFNetworkReachabilityStatusUnknown:
             case AFNetworkReachabilityStatusNotReachable:
                 [DataCenter sharedInstance].isWifi = NO;
                 [[DialogUtil sharedInstance] showDlg:self.window textOnly:@"网络连接不给力"];
                 break;
             case AFNetworkReachabilityStatusReachableViaWWAN:
                 [DataCenter sharedInstance].isWifi = NO;
                 [[DialogUtil sharedInstance] showDlg:self.window textOnly:@"当前使用移动数据网络"];
                 break;
             case AFNetworkReachabilityStatusReachableViaWiFi:
                 [DataCenter sharedInstance].isWifi = YES;
                 break;
         }
     }];
    
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}
@end
#undef AtAspectOfClass
#undef AtAspec
