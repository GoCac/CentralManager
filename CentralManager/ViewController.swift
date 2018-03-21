//
//  ViewController.swift
//  CentralManager
//
//  Created by Youhao Gong 宫酉昊 on 2018/3/22.
//  Copyright © 2018年 Youhao Gong 宫酉昊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vc = CentralManager.sharedInstance().doSomething(callback: { (result) in
            print(result ?? "default value")
        })
        self.navigationController?.pushViewController(vc!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

