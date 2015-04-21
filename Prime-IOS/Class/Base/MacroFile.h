//
//  MacroFile.h
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/19.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#ifndef Prime_IOS_MacroFile_h
#define Prime_IOS_MacroFile_h

#define RECT(x, y, w, h) CGRectMake(x, y, w, h)

#ifdef DEBUG
#  define ZLog(...) NSLog(__VA_ARGS__)
#else
#  define ZLog(...);
#endif

#define APP_SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define APP_SCREEN_HEIGHT           [UIScreen mainScreen].bounds.size.height

#define Font(s) [UIFont systemFontOfSize:s]
#define ValidArray(f) (f!=nil && [f isKindOfClass:[NSArray class]] && [f count]>0)

#endif
