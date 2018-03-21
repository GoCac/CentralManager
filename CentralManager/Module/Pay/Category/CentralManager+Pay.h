//
//  CentralManager+Pay.h
//  CentralManager
//
//  Created by Youhao Gong 宫酉昊 on 2018/3/22.
//  Copyright © 2018年 Youhao Gong 宫酉昊. All rights reserved.
//

#import "CentralManager.h"
#import <UIKit/UIKit.h>

@interface CentralManager(Test)

- (UIViewController *)payWithCallback:(void(^)(NSString *result))callback;

@end
