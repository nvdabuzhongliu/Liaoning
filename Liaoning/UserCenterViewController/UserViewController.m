//
//  UserViewController.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "UserViewController.h"
#import "PubTableView.h"
#import <Masonry.h>

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface UserViewController ()
@property(strong,nonatomic)NSArray * cellNameArray;


@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _cellNameArray = @[@"用户",@"日常信息统计",@"我的下载",@"还原",@"引导说明"];
    [self setUI];

}


-(void) setUI
{
    WS(ws)
    
    PubTableView * jwTableView = [[PubTableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) style:UITableViewStylePlain content:_cellNameArray];
    jwTableView.tag = 1000;
    [self.view addSubview:jwTableView];
    [jwTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(ws.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}




-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.title = @"用户中心";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
