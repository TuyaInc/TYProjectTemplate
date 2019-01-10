//
//  YourTestTabModuleImpl.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestTabModule.h"

#import "TYModuleManager.h"
#import "TYNavigationController.h"

#import "YourTestViewController.h"

/**
 这是一个空白的模块，仅用于tab站位
 如果不需要，请在 config_modules.json 的 tabs 中移除
 */
@interface YourTestTabModuleImpl () <TYModuleTabRegisterProtocol>

@end

@implementation YourTestTabModuleImpl

/**
 为module配置tabItem
 */
- (NSArray<TYTabItemAttribute *> *)registModuleTabItems {
    TYTabItemAttribute *tabAttr = [TYTabItemAttribute new];
    
    // 为tabItem配置viewController，根据需求自己包装navi
    // config view controller on tab, and package with navi
    UIViewController *pageVC = [YourTestViewController new];
    TYNavigationController *navi = [[TYNavigationController alloc] initWithRootViewController:pageVC];
    tabAttr.viewController = navi;
    
    // 配置tabItem的icon，可以根据需求自行控制RenderingMode
    // config tab icon and rendering mode
    tabAttr.normalImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabAttr.selectedImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 配置tabItem的title
    // config tab title
    tabAttr.itemTitle = @"Hello";
    
    return @[tabAttr];
}

@end
