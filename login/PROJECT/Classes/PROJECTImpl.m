//
//  PROJECTImpl.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTImpl.h"

#import "TYModuleManager.h"
#import "TYNavigationController.h"

#import "TYModuleMainLoginProtocol.h"

#import "YourLoginViewController.h"

@interface PROJECTImpl () <TYModuleRouteRegisterProtocol, TYModuleMainLoginProtocol, TYModuleServiceRegisterProtocol>

@end

@implementation PROJECTImpl
#pragma mark - <TYModuleRouteRegisterProtocol>
- (NSArray<TYModuleServiceInfo *> *)registModuleServices {
    TYModuleServiceInfo *info = [TYModuleServiceInfo new];
    info.protocol = @protocol(TYModuleMainLoginProtocol);
    info.implClass = [self class];
    return @[info];
}

#pragma mark - <TYModuleMainLoginProtocol>
- (UIViewController *)mainLoginViewController {
    
    // TODO: 返回你的登录页面实例，如果有必要，请用navi包裹
    // TODO: return your login view controller, and package with navi if necessary
    UIViewController *loginVC = [YourLoginViewController new];
    TYNavigationController *navi = [[TYNavigationController alloc] initWithRootViewController:loginVC];
    
    return navi;
}

#pragma mark - <TYModuleRouteRegisterProtocol>
- (NSArray<NSString *> *)registModuleRoutes {
    
    // TODO: 返回你想要注册的路由
    // TODO: return the routes you want to regist
    
    return @[
             @"your_route",
             ];
}

/**
 路由回调，只会回调注册过的路由
 callback of routes that you regist
 */
- (BOOL)handleRouteWithScheme:(NSString *)scheme host:(NSString *)host path:(NSString *)path params:(NSDictionary *)params {
    if ([host isEqualToString:@"your_route"]) {
        
        // TODO: 执行相应操作
        // TODO: handle your route
        
        return YES;
    } else {
        return NO;
    }
}

@end
