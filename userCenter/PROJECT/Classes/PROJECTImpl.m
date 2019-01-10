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

#import "YourUserCenterViewController.h"

@interface PROJECTImpl () <TYModuleRouteRegisterProtocol>

@end

@implementation PROJECTImpl

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

#pragma mark - <TYModuleTabRegisterProtocol>
- (nullable NSArray<TYTabItemAttribute *> *)registModuleTabItems {
    TYTabItemAttribute *tabAttr = [TYTabItemAttribute new];
    
    // 为tabItem配置viewController，并包装navi
    // config view controller on tab, and package with navi
    UIViewController *pageVC = [YourUserCenterViewController new];
    TYNavigationController *navi = [[TYNavigationController alloc] initWithRootViewController:pageVC];
    tabAttr.viewController = navi;
    
    // 配置tabItem的icon，可以根据需求自行控制RenderingMode
    // config tab icon and rendering mode
    tabAttr.normalImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabAttr.selectedImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 配置tabItem的title
    // config tab title
    tabAttr.itemTitle = @"Center";
    
    return @[tabAttr];
}

// tab相关回调 👉 <TYModuleTabRegisterProtocol>
// more tab callback 👉 <TYModuleTabRegisterProtocol>


@end
