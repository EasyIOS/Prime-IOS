//
//  TimeAxisScene.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisScene.h"

@interface PRTimeAxisScene ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation PRTimeAxisScene

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"时间轴";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
