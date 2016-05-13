//
//  LoginViewController.swift
//  f3hyj
//
//  Created by JoymanM on 16/5/10.
//  Copyright © 2016年 hyju. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // 获取屏幕大小
    var screenBounds: CGRect = UIScreen.mainScreen().bounds
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var loginBtn: UIButton!
    
    var Loginelse = UILabel()
    var lineOne = UIView()
    var lineTwo = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        userImage.layer.cornerRadius = 50
        loginBtn.layer.cornerRadius  = 5
        loginBtn.backgroundColor =  UIColor.init(red: 215.0/255.0, green: 0.0, blue: 16.0/255.0, alpha: 1.0)
        
        Loginelse.text = "其他登录方式"
        Loginelse.font = UIFont.systemFontOfSize(12)
        Loginelse.textColor = UIColor.blackColor()
        Loginelse.textAlignment = NSTextAlignment.Center
        self.view.addSubview(Loginelse)
        
        lineOne.backgroundColor = UIColor.lightGrayColor()
        lineTwo.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(lineOne)
        self.view.addSubview(lineTwo)
        
        self.addSnapKit()
    }
    
    func addSnapKit() {
        Loginelse.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.view).offset(0.0)
            make.bottom.equalTo(self.view).offset(-110.0)
            make.size.equalTo(CGSizeMake(80.0, 20.0))
        }
        
        lineOne.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(0.0)
            make.bottom.equalTo(self.view).offset(-120.0)
            make.width.equalTo((screenBounds.width/2.0)-55.0)
            make.height.equalTo(0.5)
        }
        
        lineTwo.snp_makeConstraints { (make) -> Void in
            make.right.equalTo(self.view).offset(0.0)
            make.bottom.equalTo(self.view.snp_bottom).offset(-120.0)
            make.width.equalTo(lineOne)
            make.height.equalTo(0.5)
        }
    }
    
    // 微信授权登录
    @IBAction func wechatClick(sender: AnyObject) {
        
        ShareSDK.authorize(SSDKPlatformType.TypeWechat, settings: nil, onStateChanged: { (state: SSDKResponseState, user: SSDKUser!, error : NSError!) -> Void in
            switch state {
                
            case SSDKResponseState.Success: print("授权成功,用户信息为\(user)\n ----- 授权凭证为\(user.credential)")
            case SSDKResponseState.Fail:    print("授权失败,错误描述:\(error)")
            case SSDKResponseState.Cancel:  print("操作取消")
                
            default:
                break
            }
        })
    }
    
    // QQ授权登录
    @IBAction func qqClick(sender: AnyObject) {
        
        ShareSDK.authorize(SSDKPlatformType.TypeQQ, settings: nil, onStateChanged: { (state: SSDKResponseState, user: SSDKUser!, error: NSError!) -> Void in
            switch state {
                
            case SSDKResponseState.Success: print("授权成功,用户信息为\(user)\n ----- 授权凭证为\(user.credential)")
            case SSDKResponseState.Fail:    print("授权失败,错误描述:\(error)")
            case SSDKResponseState.Cancel:  print("操作取消")
                
            default:
                break
            }
        })
    }
    
    // 微博授权登录
    @IBAction func weiboClick(sender: AnyObject) {
        
        ShareSDK.authorize(SSDKPlatformType.TypeSinaWeibo, settings: nil, onStateChanged: { (state: SSDKResponseState, user: SSDKUser!, error: NSError!) -> Void in
            switch state {
                
            case SSDKResponseState.Success: print("授权成功,用户信息为\(user)\n ----- 授权凭证为\(user.credential)")
            case SSDKResponseState.Fail:    print("授权失败,错误描述:\(error)")
            case SSDKResponseState.Cancel:  print("操作取消")
                
            default:
                break
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
