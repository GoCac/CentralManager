//
//  CentralManager+Pay.m
//  CentralManager
//
//  Created by Youhao Gong 宫酉昊 on 2018/3/22.
//  Copyright © 2018年 Youhao Gong 宫酉昊. All rights reserved.
//

#import "CentralManager+Pay.h"

@implementation CentralManager(Pay)

- (UIViewController *)payWithCallback:(void(^)(NSString *result))callback;
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"Pay" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
