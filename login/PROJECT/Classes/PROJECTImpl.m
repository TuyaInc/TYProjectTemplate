//
//  PROJECTImpl.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTImpl.h"

#import "TYModuleManager.h"
#import "TYModuleMainLoginProtocol.h"

#import "TPNavigationController.h"

#import "YourLoginViewController.h"

@interface PROJECTImpl () <TYModuleRouteRegisterProtocol, TYModuleMainLoginProtocol>

@end

@implementation PROJECTImpl

#pragma mark - <TYModuleMainLoginProtocol>
- (UIViewController *)mainLoginViewController {
    
    // TODO: 返回你的登录页面实例，如果有必要，请用navi包裹
    
    UIViewController *loginVC = [YourLoginViewController new];
    
    TPNavigationController *navi = [[TPNavigationController alloc] initWithRootViewController:loginVC];
    
    return navi;
}

#pragma mark - <TYModuleRouteRegisterProtocol>
/*
 路由注册, 注册路由的模块需要添加到config_modules.json的modules中
 */
- (NSArray<NSString *> *)registModuleRoutes {
    
    // TODO: 返回你想要注册的路由
    
    return @[
            @"your_route",
            ];
}

/**
 路由回调，只会回调注册过的路由
 */
- (BOOL)handleRouteWithSchema:(NSString *)schema host:(NSString *)host path:(NSString *)path params:(NSDictionary *)params {
    if ([host isEqualToString:@"your_route"]) {
        
        // TODO: 执行相应操作
        
        return YES;
    } else {
        return NO;
    }
}

@end
