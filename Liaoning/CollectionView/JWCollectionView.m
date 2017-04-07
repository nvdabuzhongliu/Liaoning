//
//  JWCollectionView.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "JWCollectionView.h"
#import "JWCollectionViewCell.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define BLOCK_EXEC(block,...) if(block){block(__VA_ARGS__);}

@interface JWCollectionView ()
@property(strong,nonatomic) NSMutableArray * items;
@property(strong,nonatomic) NSMutableArray * oldItems;;

@end

@implementation JWCollectionView

-(instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        
        self.backgroundColor = [UIColor grayColor];
        self.delegate = self;
        self.dataSource = self;
        self.contentSize = CGSizeMake(kScreenWidth, kScreenHeight - 1);
        self.alwaysBounceVertical = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        
        [self registerClass:[JWCollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];

    }
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JWCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    
    cell.titleLabel.text = self.items[indexPath.row];
    cell.bgImageView.image = [UIImage imageNamed:@"delete_test"];
    
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((1366 - 200) / 7.0  / 1366.0 * kScreenWidth ,(1024 - 80 - 150) / 3.5 / 1024.0 * kScreenHeight);
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(30.0 / 1024 * kScreenHeight, 30.0 / 1366.0 * kScreenWidth,30.0 / 1024 * kScreenHeight, 30.0/ 1366.0 * kScreenWidth);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    
    CGFloat kHeight =[UIScreen mainScreen].bounds.size.height;
    return 15.f / 667.0 * kHeight;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    BLOCK_EXEC(self.clickCell,indexPath.row);
}


-(NSMutableArray *)items{//待测试
    if (_oldItems == _items && _items != nil) {
        return _items;
    }
    if ([_jwDataSource respondsToSelector:@selector(returnAllGroups)]) {
        _items = [_jwDataSource returnAllGroups];
        _oldItems = _items;
    }
    return _items;
}

@end
