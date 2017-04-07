//
//  JWCellFactory.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/6.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "JWCellFactory.h"

@implementation JWCellFactory
+(JWTableViewCell *)initWithCellType:(NSString *)CellType reuseIdentifier:(NSString *)reuseIdentifier content:(NSString *)content titleImage:(UIImage *)titleImage accessoryViewType:(UITableViewCellAccessoryType)type{
    if ([CellType isEqualToString:@"TextArrow"]) {
        return [[TextArrowCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier content:content titleImage:nil accessoryViewType:type];
    }
    return nil;
}
@end
