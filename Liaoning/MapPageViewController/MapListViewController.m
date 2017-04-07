//
//  MapListViewController.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "MapListViewController.h"
#import "JWCollectionView.h"
#import <Masonry.h>
#import "YYFPSLabel.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface MapListViewController ()<JWCollectionViewDataSource>
{
    NSMutableArray * cells;
    JWCollectionView * jwCollectionView ;
}
@property (nonatomic, strong) YYFPSLabel *fpsLabel;

@end

@implementation MapListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUI];
    [self testFPSLabel];

}
- (void)testFPSLabel {
    _fpsLabel = [YYFPSLabel new];
    _fpsLabel.frame = CGRectMake(200, 200, 50, 30);
    [_fpsLabel sizeToFit];
    [self.view addSubview:_fpsLabel];
    
    // 如果直接用 self 或者 weakSelf，都不能解决循环引用问题
    
    // 移除也不能使 label里的 timer invalidate
    //        [_fpsLabel removeFromSuperview];
}
- (void) setUI
{
    WS(ws)
    
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc]init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    jwCollectionView = [[JWCollectionView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 1) collectionViewLayout:flowLayout];
    [self.view addSubview:jwCollectionView];
    jwCollectionView.jwDataSource = self;
    [jwCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(ws.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [jwCollectionView setClickCell:^(NSInteger indexPath){
        NSLog(@"%ld",indexPath);
    }];

    cells = [NSMutableArray arrayWithCapacity:100];
    
    for (int i = 0; i < 100; i++) {
        [cells addObject:[NSString stringWithFormat:@"%d",i]];
    }
}
- (NSMutableArray *) returnAllGroups{//必须实现
  
    return cells;
}



-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.title = @"地图列表";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
