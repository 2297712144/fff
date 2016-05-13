//
//  AppDelegate.swift
//  f3hyj
//
//  Created by JoymanM on 16/5/5.
//  Copyright © 2016年 hyju. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        /**
         *  第一个参数设置ShareSDK的AppKey，把从官网注册应用生成的AppKey传入此方法中。
         *  第二个第三个参数为需要连接社交平台SDK时触发，在此事件中写入连接代码。
         *  第四个参数则为配置本地社交平台时触发，根据返回的平台类型来配置平台信息。
         */
        ShareSDK.registerApp("12792a97491f0",
                             
                            // 第二个参数
                            activePlatforms: [SSDKPlatformType.TypeWechat.rawValue,
                                              SSDKPlatformType.TypeQQ.rawValue,
                                              SSDKPlatformType.TypeSinaWeibo.rawValue],
                            
                            // 第三个参数
                            onImport: {(platform: SSDKPlatformType) -> Void in
                                switch platform {
                                    
                                    case SSDKPlatformType.TypeWechat:
                                        ShareSDKConnector.connectWeChat(WXApi.classForCoder())
                                
                                    case SSDKPlatformType.TypeQQ:
                                        ShareSDKConnector.connectQQ(QQApiInterface.classForCoder(), tencentOAuthClass: TencentOAuth.classForCoder())
                                    
                                    case SSDKPlatformType.TypeSinaWeibo:
                                        ShareSDKConnector.connectWeibo(WeiboSDK.classForCoder())
                                
                                    default:
                                        break
                                }},
                            
                            // 第四个参数
                            onConfiguration: {(platform: SSDKPlatformType, appInfo: NSMutableDictionary!) -> Void in
                                switch platform {
                                    
                                    //设置微信应用信息
                                    case SSDKPlatformType.TypeWechat:
                                                  appInfo.SSDKSetupWeChatByAppId("wx68b324eb25e73b15",
                                                appSecret: "e1767bbbb78a557d2b0d1af87676fc2e")
                                        break
                                    
                                    // 设置QQ应用信息
                                    case SSDKPlatformType.TypeQQ:
                                                  appInfo.SSDKSetupQQByAppId("1105307165",
                                                   appKey: "0R6SgrTiUhBUaYb7",
                                                 authType: SSDKAuthTypeBoth)
                                        break
                                    
                                    // 设置新浪微博应用信息,其中authType设置为使用SSO＋Web形式授权
                                    case SSDKPlatformType.TypeSinaWeibo:
                                                  appInfo.SSDKSetupSinaWeiboByAppKey("1162752231",
                                                appSecret: "0f338c203c0b75b416e8f62fe3231d44",
                                              redirectUri: "http://www.sharesdk.cn",
                                                 authType: SSDKAuthTypeBoth)
                                        break
                                    
                                    default:
                                        break
                                }
        })
        return true
    }
    
}
