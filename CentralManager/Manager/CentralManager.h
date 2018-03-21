//
//  CentralManager.h
//  CentralManager
//
//  Created by Youhao Gong 宫酉昊 on 2018/3/22.
//  Copyright © 2018年 Youhao Gong 宫酉昊. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CentralManager : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;
// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end
