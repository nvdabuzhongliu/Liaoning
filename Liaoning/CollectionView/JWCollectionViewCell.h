//
//  JWCollectionViewCell.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWCollectionViewCell : UICollectionViewCell
@property(strong,nonatomic) UIImageView * bgImageView;
@property(strong,nonatomic) UILabel * titleLabel;
@property(strong,nonatomic) UIImageView * statusImageView;
@property(nonatomic,assign) BOOL isSelected;
@end
