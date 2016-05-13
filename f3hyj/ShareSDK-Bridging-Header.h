//
//  ShareSDK-Bridging-Header.h
//  f3hyj
//
//  Created by JoymanM on 16/5/6.
//  Copyright © 2016年 hyju. All rights reserved.
//

//QQ41E1A61D

#ifndef ShareSDK_Bridging_Header_h
#define ShareSDK_Bridging_Header_h

// shareSDK头文件
#import <ShareSDK/ShareSDK.h>
#import <ShareSDKUI/ShareSDK+SSUI.h>

// 使用shareSDK提供的UI需导入头文件
#import <ShareSDKConnector/ShareSDKConnector.h>

// 腾讯（对应QQ和QQ空间）SDK头文件
#import <TencentOpenAPI/TencentOAuth.h>
#import <TencentOpenAPI/QQApiInterface.h>

// 微信SDK头文件
#import "WXApi.h"

// 新浪微博SDK头文件
#import "WeiboSDK.h"

// 支付宝SDK
//#import "APOpenAPI.h"

// 第三方自动适配库
#import "SnapKit.h"

//
#import "DDKit.h"

#endif
