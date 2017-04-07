//
//  JWCollectionView.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JWCollectionView;

@protocol JWCollectionViewDataSource <NSObject>
@required

/**
 返回所有cell

 @return 必须实现数据源
 */
- (NSMutableArray *) returnAllGroups;
@end

@interface JWCollectionView : UICollectionView<UICollectionViewDataSource,UICollectionViewDelegate>

@property(nonatomic, copy) void (^clickCell)(NSInteger  indexPath);
@property(weak,nonatomic) id <JWCollectionViewDataSource>jwDataSource;

@property(nonatomic,assign) BOOL isMutGroups;
@end
