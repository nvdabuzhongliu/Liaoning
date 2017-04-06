//
//  MainViewController.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "MainViewController.h"
#import "UserViewController.h"
#import <Masonry.h>

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface MainViewController ()
@property(strong,nonatomic)UIImageView * backImageView;
@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUI];

}

- (void)setUI
{
    
    WS(ws)
    self.backImageView = [[UIImageView alloc]init];
    self.backImageView.userInteractionEnabled = YES;
    CGSize viewSize = self.view.bounds.size;
    if(viewSize.width > viewSize.height)
        [self.backImageView setImage:[UIImage imageNamed:@"bg_main_hor.jpg"]];
    else
        [self.backImageView setImage:[UIImage imageNamed:@"bg_main_ver.jpg"]];
    
    [self.view addSubview:self.backImageView];
    [self.backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(ws.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    UIButton * user = [[UIButton alloc]init];
    [user setImage:[UIImage imageNamed:@"btn_user"] forState:UIControlStateNormal];
    [user addTarget:self action:@selector(clickUser) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:user];
    
    [user mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view).offset(10);
        make.left.equalTo(ws.view).offset(10);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    UIButton * weather = [[UIButton alloc]init];
    [weather setImage:[UIImage imageNamed:@"btn_weather"] forState:UIControlStateNormal];
    [weather addTarget:self action:@selector(clickUser) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:weather];
    
    [weather mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view).offset(0);
        make.centerX.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(50, 36));
    }];
    
    UIButton * setting = [[UIButton alloc]init];
    [setting setImage:[UIImage imageNamed:@"btn_setting"] forState:UIControlStateNormal];
    [setting addTarget:self action:@selector(clickSet) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:setting];
    
    [setting mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view).offset(10);
        make.right.equalTo(ws.view).offset(-10);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    
    UIButton * map = [[UIButton alloc]init];
    [map setTitle:@"专题" forState:UIControlStateNormal];
    map.tag = 1000;
    [map addTarget:self action:@selector(clickMap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:map];
    [map mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.view).offset(-60);
        make.left.equalTo(ws.view).offset([UIScreen mainScreen].bounds.size.width *0.205);
        make.size.mas_equalTo(CGSizeMake(123, 50));
    }];
    
    
    UIButton * document = [[UIButton alloc]init];
    document.tag = 1001;
    [document setTitle:@"文档" forState:UIControlStateNormal];
    [document addTarget:self action:@selector(clickDocument) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:document];
    [document mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.view).offset(-60);
        make.right.equalTo(ws.view).offset(-[UIScreen mainScreen].bounds.size.width *0.205);
        make.size.mas_equalTo(CGSizeMake(123, 50));
    }];
}

- (void) clickUser
{
    UserViewController * userViewContrller = [[UserViewController alloc]init];
    [self.navigationController pushViewController:userViewContrller animated:YES];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];

}

- (void) clickSet
{
    
}

- (void) clickWeather
{
    
}

- (void) clickMap
{
    
}

- (void) clickDocument
{
    
}
//获取将要旋转的状态
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
//    NSLog(@"%@",NSStringFromCGRect([UIScreen mainScreen].bounds));
    //    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    WS(ws)

    if ((toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight))
    {
        self.backImageView.image = [UIImage imageNamed:@"bg_main_hor.jpg"];
        UIButton * map = [self.view viewWithTag:1000];
        [map mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(ws.view).offset(-60);
            make.left.equalTo(ws.view).offset([UIScreen mainScreen].bounds.size.width *0.205);
            make.size.mas_equalTo(CGSizeMake(123, 50));
        }];
        UIButton * document = [self.view viewWithTag:1001];
        [document mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(ws.view).offset(-60);
            make.right.equalTo(ws.view).offset(-[UIScreen mainScreen].bounds.size.width *0.205);
            make.size.mas_equalTo(CGSizeMake(123, 50));
        }];
    }
    
    if ((toInterfaceOrientation == UIInterfaceOrientationPortrait) || (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
    {
        self.backImageView.image = [UIImage imageNamed:@"bg_main_ver.jpg"];
        UIButton * map = [self.view viewWithTag:1000];
        [map mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(ws.view).offset(-60);
            make.left.equalTo(ws.view).offset([UIScreen mainScreen].bounds.size.width *0.205);
            make.size.mas_equalTo(CGSizeMake(123, 50));
        }];
        UIButton * document = [self.view viewWithTag:1001];
        [document mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(ws.view).offset(-60);
            make.right.equalTo(ws.view).offset(-[UIScreen mainScreen].bounds.size.width *0.205);
            make.size.mas_equalTo(CGSizeMake(123, 50));
        }];
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
}


@end
