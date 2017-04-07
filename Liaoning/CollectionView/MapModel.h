//
//  MapModel.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/7.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MapModel : NSObject
@property(copy,nonatomic) NSString* name;
@property(strong,nonatomic) NSString * imagePath;
@property(strong,nonatomic) NSString * mapID;
@property(strong,nonatomic) NSString  * downLoadUrl;
@property(nonatomic,assign) BOOL downloadStatus;

@end
