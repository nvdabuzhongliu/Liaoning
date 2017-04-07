//
//  PubTableView.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PubTableView : UITableView<UITableViewDataSource,UITableViewDelegate>

-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style content:(NSArray *) contentArray;

@property(strong,nonatomic)NSMutableArray * groups;
@property(nonatomic,assign)float cellHeight;
@end
