//
//  PubTableView.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "PubTableView.h"

@implementation PubTableView

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _grounpContent.count;
} 
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return nil;
}

@end
