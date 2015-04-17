//
//  TimeAxisScene.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisScene.h"
#import "PRTimeAxisDatasource.h"
#import "PRTimeAxisRequest.h"
#import "PRTimeAxisSceneModel.h"

@interface PRTimeAxisScene ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) PRTimeAxisDatasource *timeAxisDatasource;
@property (nonatomic, strong) PRTimeAxisRequest *timeAxisRequest;
@property (nonatomic, strong) PRTimeAxisSceneModel *timeAxisSceneModel;

@end

@implementation PRTimeAxisScene

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"时间轴";
    
    @weakify(self);
    self.timeAxisSceneModel.timeAxisRequest.requestNeedActive = YES;
    [[RACObserve(self.timeAxisSceneModel, tagList)
      filter:^BOOL(NSMutableArray* value) {
          return value.count >0;
      }]
     subscribeNext:^(NSMutableArray *value) {
         @strongify(self);
         [self.tableView reloadData];
     }];
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
