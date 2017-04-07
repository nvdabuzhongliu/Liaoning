//
//  JWCellFactory.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/6.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWTableViewCell.h"
#import "TextArrowCell.h"
@interface JWCellFactory : NSObject

+(JWTableViewCell *)initWithCellType:(NSString *)CellType reuseIdentifier:(NSString *)reuseIdentifier content:(NSString *)content titleImage:(UIImage *) titleImage accessoryViewType:(UITableViewCellAccessoryType) type;

@end
