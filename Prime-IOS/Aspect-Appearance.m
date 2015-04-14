//
//  Aspect-Appearance.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "AppDelegate.h"
#import <XAspect/XAspect.h>
#import "RootViewController.h"

#define AtAspect Appearance

#define AtAspectOfClass AppDelegate
@classPatchField(AppDelegate)
AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    RootViewController *rootVC = [[RootViewController alloc] init];
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}
@end
#undef AtAspectOfClass
#undef AtAspec
