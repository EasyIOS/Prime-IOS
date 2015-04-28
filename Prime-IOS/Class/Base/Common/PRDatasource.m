//
//  PRDatasource.m
//  Prime-IOS
//
//  Created by zhu_haibo on 15/4/16.
//  Copyright (c) 2015年 EasyIOS. All rights reserved.
//

#import "PRDatasource.h"
#import "PRTableViewCell.h"

@interface PRDatasource ()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSString *reuseIdentifier;
@property (nonatomic, strong) PRDatasourceCellBlock cellBlock;

@end

@implementation PRDatasource

-(id) init
{
    return nil;
}

-(id) initWithItem:(NSArray *)aItem
    cellIdentifier:(NSString *)aIdentifier
cellConfigureBlock:(PRDatasourceCellBlock)cellBlock
{
    self = [super init];
    if (self) {
        _items = [NSArray arrayWithArray:aItem];
        _reuseIdentifier = aIdentifier;
        _cellBlock = [cellBlock copy];
    }
    return self;
}

-(id) itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.items[(NSUInteger )indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.reuseIdentifier
                                                            forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:self.reuseIdentifier];
    } else {
        while ([cell.contentView.subviews lastObject] != nil) {
            [(UIView *)[cell.contentView.subviews lastObject] removeFromSuperview];
        }
    }
    id item = [self itemAtIndexPath:indexPath];
    self.cellBlock(cell, item);
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (ValidArray([tableView visibleCells])) {
        id cell = [[tableView visibleCells] objectAtIndex:0];
        if ([cell isKindOfClass:[PRTableViewCell class]]) {
            return [cell getCellHeight];
        }
    }
    return 0;
}

@end
