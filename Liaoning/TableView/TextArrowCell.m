//
//  TextArrowCell.m
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/6.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import "TextArrowCell.h"

@implementation TextArrowCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier content:(NSString *)content titleImage:(UIImage *)titleImage accessoryViewType:(UITableViewCellAccessoryType)type{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier content:content titleImage:titleImage accessoryViewType:type]) {
        self.textLabel.text = content;
        self.accessoryType = type;
    }
    return self;
}

@end
