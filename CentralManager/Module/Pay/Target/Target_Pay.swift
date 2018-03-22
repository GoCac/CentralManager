//
//  Target_Pay.swift
//  CentralManager
//
//  Created by Youhao Gong 宫酉昊 on 2018/3/22.
//  Copyright © 2018年 Youhao Gong 宫酉昊. All rights reserved.
//

import UIKit

@objc(Target_Pay)
class Target_Pay: NSObject {
    @objc
    func Action_viewController(params:NSDictionary) -> UIViewController {
        
        let block = params["callback"]
        typealias CallbackType = @convention(block) (NSString) -> Void
        
        let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())//获取内存地址
        let callback = unsafeBitCast(blockPtr, to: CallbackType.self)//指针转换
        
        callback("success")
        
        let vc = PayViewController(nibName: "PayViewController", bundle: nil)
        return vc
    }
}
