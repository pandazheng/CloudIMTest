//
//  ViewController.swift
//  CloudIMTest
//
//  Created by pandazheng on 15/6/19.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //查询保存的token
        let tokenCache = NSUserDefaults.standardUserDefaults().objectForKey("kDeviceToken") as? String
        
        //初始化AppKey
        RCIM.sharedRCIM().initWithAppKey("3argexb6r9owe", deviceToken: tokenCache)
        
        //用token测试连接
        RCIM.sharedRCIM().connectWithToken("4MPOybaEuRJmJVCZCnQ7P7M2F+yLlBwyllGCrq0XsjHp6eOuldVykshjK9EEvMlgEfUSKBIw40tWKyc5RedUv0PG+ny1YVz9", success: { (_) -> Void in
            println("连接成功!")
        }, error: { (_) -> Void in
            println("连接失败!")
        }) { () -> Void in
            println("Token不正确!")
        }
    }

    override func didReceiveMemoryWarning() {     
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

