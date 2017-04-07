//
//  JWTableViewCell.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/6.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "JWTableViewCell.h"

@implementation JWTableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier content:(NSString *)content titleImage:(UIImage *)titleImage accessoryViewType:(UITableViewCellAccessoryType)type{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        self.contentView.layer.masksToBounds = NO;
        self.layer.masksToBounds = YES;
    }
    return self;
}
- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor lightGrayColor].CGColor);
    CGContextStrokeRectWithWidth(context, CGRectMake(0, rect.size.height - 1, rect.size.width, 0.5), 0.3);
}
@end
