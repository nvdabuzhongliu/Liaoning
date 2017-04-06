//
//  Permission.h
//  Liaoning
//
//  Created by gxsn@iMac on 2017/4/5.
//  Copyright © 2017年 gxsn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Permission : NSObject

+ (void)getNetWorkPermission;//检查网络

+ (void)getPhotoAlbumPermission;//检查相册

+ (void)getCameraPermission;//检查相机

+ (void)getMicrophonePermission;//检查麦克风

+ (void)getLocationPermission;//检查定位权限
@end
