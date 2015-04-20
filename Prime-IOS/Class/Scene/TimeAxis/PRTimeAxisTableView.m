//
//  PRTimeAxisTableView.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/18.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRTimeAxisTableView.h"
#import "PRTimeAxisSceneModel.h"
#import "PRTimeAxisTableViewCell.h"
#import "PRTimeAxisDatasource.h"

@interface PRTimeAxisTableView () <UITableViewDelegate>

@property (nonatomic, strong) PRTimeAxisSceneModel *timeAxisSceneModel;
@property (nonatomic, strong) PRTimeAxisDatasource *timeAxisDatasource;
@property (nonatomic, strong) NSArray *dataA;

@end

@implementation PRTimeAxisTableView

-(id) init
{
    return nil;
}

-(id) initWithFrame:(CGRect)frame style:(UITableViewStyle)style data:(NSMutableArray *)dataArray{
    self = [super initWithFrame:frame style:style];
    if(self){
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.allowsSelection = NO;
        
        PRDatasourceCellBlock cellBlock = ^(PRTimeAxisTableViewCell *cell, TopicEntity *item){
            [cell configureCell:item];
        };
        
        self.timeAxisDatasource = [[PRTimeAxisDatasource alloc] initWithItem:dataArray
                                                              cellIdentifier:@"timeAxis"
                                                          cellConfigureBlock:cellBlock];
        self.dataSource = self.timeAxisDatasource;
        self.dataA = [dataArray copy];
        self.delegate = self;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self registerClass:[PRTimeAxisTableViewCell class] forCellReuseIdentifier:@"timeAxis"];
    }
    return self;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    PRTimeAxisTableViewCell *cell = [self.dataA objectAtIndex:indexPath.row];
    return [cell getCellHeight];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
