//
//  PROJECTImpl.m
//  PROJECT
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "PROJECTImpl.h"

#import "TYModuleManager.h"

#import "TPNavigationController.h"

#import "YourHomeViewController.h"

@interface PROJECTImpl () <TYModuleRouteRegisterProtocol, TYModuleTabRegisterProtocol>

@end

@implementation PROJECTImpl

#pragma mark - <TYModuleRouteRegisterProtocol>
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

#pragma mark - <TYModuleTabRegisterProtocol>
- (nullable NSArray<TYTabItemAttribute *> *)registModuleTabItems {
    TYTabItemAttribute *tabAttr = [TYTabItemAttribute new];
    
    // 为tabItem配置viewController，根据需求自己包装navi
    UIViewController *pageVC = [YourHomeViewController new];
    pageVC.title = @"HomePage";
    
    TPNavigationController *navi = [[TPNavigationController alloc] initWithRootViewController:pageVC];
    tabAttr.viewController = navi;
    
    // 配置tabItem的icon，可以根据需求自行控制RenderingMode
    // UIImageRenderingModeAlwaysTemplate: 始终将图片作为模板，图片颜色受tintColor影响
    // UIImageRenderingModeAlwaysOriginal: 始终将图片原样显示，图片颜色不受tintColor影响
    // UIImageRenderingModeAutomatic: 根据场景判断图片的rRenderingMode，tabBar上icon为Template
    tabAttr.normalImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabAttr.selectedImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 配置tabItem的title
    tabAttr.itemTitle = @"home";
    
    return @[tabAttr];
}

// tab相关回调，参考 <TYModuleTabRegisterProtocol>

@end
