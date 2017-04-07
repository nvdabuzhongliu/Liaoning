//
//  JWTableViewCell.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/6.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWTableViewCell : UITableViewCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier content:(NSString *)content titleImage:(UIImage *) titleImage accessoryViewType:(UITableViewCellAccessoryType) type;

@end
