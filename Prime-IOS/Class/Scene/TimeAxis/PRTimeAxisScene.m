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
#import "TopicEntity.h"

#define DataPath @"Data/List"

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
        BOOL success = [[req.output objectForKey:@"Msg"] isEqualToString:@"Success"];
        if (success) {
            NSMutableArray *dataArray = [self configData:req];
            PRTimeAxisTableView *tabView = [[PRTimeAxisTableView alloc] initWithFrame:CGRectMake(0, 64, 320, 568)
                                                                                style:UITableViewStylePlain
                                                                                 data:dataArray];
            [self.view addSubview:tabView];
        }
    } error:nil];
}

-(NSMutableArray *) configData:(PRFeedRequest *)response
{
    NSMutableArray *entityArray = [NSMutableArray array];
    [[response.output objectAtPath:DataPath] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSError* err = nil;
        TopicEntity *entity = [[TopicEntity alloc] initWithDictionary:[[response.output objectAtPath:DataPath] objectAtIndex:idx] error:&err];
        [entityArray addObject:entity];
    }];
    return entityArray;
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
