//
//  JWCollectionViewCell.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "JWCollectionViewCell.h"

@implementation JWCollectionViewCell


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.bgImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height - 35)];
        self.statusImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.bounds.size.width - 30, 0, 30, 30)];
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, self.bgImageView.frame.origin.y + self.bgImageView.frame.size.height,self.bounds.size.width , 35)];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;

        [self.contentView addSubview:self.bgImageView];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.statusImageView];
        self.statusImageView.image = [UIImage imageNamed:@"Unselected"];
        self.bgImageView.backgroundColor = [UIColor orangeColor];

    }
    return self;
}

- (void)setIsSelected:(BOOL)isSelected{
    _isSelected = isSelected;
    if (_isSelected) {
        self.statusImageView.image = [UIImage imageNamed:@"Selected"];
    }else{
        self.statusImageView.image = [UIImage imageNamed:@"Unselected"];
    }
}

@end
