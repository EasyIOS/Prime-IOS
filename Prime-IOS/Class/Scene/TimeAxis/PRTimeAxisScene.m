//
//  TimeAxisScene.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisScene.h"
#import "PRTimeAxisTableView.h"
#import "ActionSceneModel.h"
#import "PRFeedRequest.h"

@interface PRTimeAxisScene ()

@end

@implementation PRTimeAxisScene

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"时间轴";
    
    @weakify(self);
    PRFeedRequest *req = [PRFeedRequest Request];
    [[ActionSceneModel sharedInstance] sendRequest:req success:^{
        @strongify(self);
        PRTimeAxisTableView *tabView = [[PRTimeAxisTableView alloc] initWithFrame:CGRectMake(0, 64, 320, 568)
                                                                            style:UITableViewStylePlain
                                                                             data:[req.output objectAtPath:@"Data/List"]];
        [self.view addSubview:tabView];
    } error:nil];
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
