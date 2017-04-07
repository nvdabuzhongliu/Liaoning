//
//  PubTableView.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "PubTableView.h"
#import "JWCellFactory.h"

@interface PubTableView ()
@property(strong,nonatomic) NSArray * array;
@end

@implementation PubTableView

-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style content:(NSArray *)contentArray{
    if (self = [super initWithFrame:frame style:style]) {
        _array = contentArray;
        self.delegate = self;
        self.dataSource = self;
        [self setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        self.cellLayoutMarginsFollowReadableWidth = false; 
    }
    return self;
}

-(NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JWTableViewCell * cell;
    if (!cell) {
        cell = [JWCellFactory initWithCellType:@"TextArrow" reuseIdentifier:@"Cell" content:_array[indexPath.row] titleImage:nil accessoryViewType:UITableViewCellAccessoryDisclosureIndicator];
    }
    return cell;
}

@end
