//
//  ViewController.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//  此页作为引导页与登录页面

#import "ViewController.h"
#import "MainViewController.h"


@interface ViewController ()
@property(nullable, nonatomic,strong) UIBarButtonItem *leftBarButtonItem;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
  
    [self addBarButtonItem];
}

-(void) addBarButtonItem{
    
//    self.navigationItem.prompt = @"实验navi属性";
    self.navigationItem.title = @"引导页";
//    
//    NSLog(@"top:%@",self.navigationController.topViewController);
//    NSLog(@"visible:%@",self.navigationController.visibleViewController);
    
    //    UIView * titleView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    //    titleView.backgroundColor = [UIColor yellowColor];
    //    self.navigationItem.titleView = titleView;
    
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:20/255.0 green:155/255.0 blue:213/255.0 alpha:1.0]];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
    

    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 35)];
    [button setImage:[UIImage imageNamed:@"btn_back.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backViewcontroller) forControlEvents:UIControlEventTouchUpInside];
    _leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    UIBarButtonItem *fixedItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    // 设置边框距离，个人习惯设为-16，可以根据需要调节
    fixedItem.width = -16;
    
    UIBarButtonItem * rightBarbuttonItem = [[UIBarButtonItem alloc]initWithTitle:@"保存" style:UIBarButtonItemStyleDone target:self action:@selector(push)];
    [rightBarbuttonItem setTintColor:[UIColor whiteColor]];
//    [rightBarbuttonItem setImage:[UIImage imageNamed:@"btn_back"]]; //设置图片
    
    self.navigationItem.leftBarButtonItems = @[fixedItem, _leftBarButtonItem];
    self.navigationItem.rightBarButtonItem = rightBarbuttonItem;
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_main_hor.jpg"] forBarMetrics:UIBarMetricsDefault];  //设置背景
    
}

-(void)backViewcontroller{
  
}

-(void)push{
    MainViewController * mainViewController = [[MainViewController alloc]init];
    [self.navigationController pushViewController:mainViewController animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
