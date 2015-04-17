//
//  TimeAxisScene.m
//  Prime-IOS
//
//  Created by gypsii001 on 15/4/14.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisScene.h"
#import "PRTimeAxisDatasource.h"
#import "PRTimeAxisSceneModel.h"
#import "PRTimeAxisTableViewCell.h"


@interface PRTimeAxisScene ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) PRTimeAxisDatasource *timeAxisDatasource;
@property (nonatomic, strong) PRTimeAxisSceneModel *timeAxisSceneModel;

@end

@implementation PRTimeAxisScene

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"时间轴";
    
    PRDatasourceCellBlock cellBlock = ^(PRTimeAxisTableViewCell *cell, TopicEntity *item){
        [cell configureCell:item];
    };
    
    self.timeAxisDatasource = [[PRTimeAxisDatasource alloc] initWithItem:@[@0]
                                                    cellIdentifier:@"timeAxis"
                                                    cellConfigureBlock:cellBlock];
    
    _timeAxisSceneModel = [PRTimeAxisSceneModel SceneModel];
    
    @weakify(self);
    self.timeAxisSceneModel.timeAxisRequest.requestNeedActive = YES;
//    self.timeAxisSceneModel.timeAxisRequest.PATH = @"";
    [[RACObserve(self.timeAxisSceneModel, topicList)
      filter:^BOOL(NSMutableArray* value) {
          return value.count >0;
      }]
     subscribeNext:^(NSMutableArray *value) {
         @strongify(self);
         [self.tableView reloadData];
     }];
    
    [self.tableView addPullToRefreshWithActionHandler:^{
        @strongify(self);
        self.timeAxisSceneModel.timeAxisRequest.page = @1;
        self.timeAxisSceneModel.timeAxisRequest.requestNeedActive = YES;
    }];
    
    [self.tableView addInfiniteScrollingWithActionHandler:^{
        @strongify(self);
        self.timeAxisSceneModel.timeAxisRequest.page = [self.timeAxisSceneModel.timeAxisRequest.page increase:@1];
        self.timeAxisSceneModel.timeAxisRequest.requestNeedActive = YES;
    }];
    
    [[RACObserve(self.timeAxisSceneModel, topicEntityList)
      filter:^BOOL(TopicEntityList * value) {
          return value !=nil;
      }]
     subscribeNext:^(TopicEntityList *value) {
         @strongify(self);
//         self.timeAxisSceneModel.topicList = [value.pagination
//                                      success:self.sceneModel.dataArray
//                                      newArray:value.list];
//         self.sceneModel.request.page = value.pagination.page;
         [self.tableView reloadData];
//         [self.tableView endAllRefreshingWithIntEnd:value.pagination.isEnd.integerValue];
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
