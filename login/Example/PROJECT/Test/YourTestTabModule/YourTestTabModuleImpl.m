//
//  YourTestTabModuleImpl.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestTabModuleImpl.h"

#import "TYModuleManager.h"
#import "TYNavigationController.h"

#import "YourTestViewController.h"


@interface YourTestTabModuleImpl () <TYModuleTabRegisterProtocol>

@end

@implementation YourTestTabModuleImpl

- (NSArray<TYTabItemAttribute *> *)registModuleTabItems {
    TYTabItemAttribute *tabAttr = [TYTabItemAttribute new];
    
    // 为tabItem配置viewController，并包装navi
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
    tabAttr.itemTitle = @"Your_Tab";
    
    return @[tabAttr];
}

@end
