//
//  YourTestModule.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestModule.h"

#import "TYModuleManager.h"

#import "TPNavigationController.h"


/**
 这是一个空白的模块，仅用于tab站位
 如果不需要，请在 config_modules.json 的 tabs 中移除
 */
@interface YourTestModule () <TYModuleTabRegisterProtocol>

@end

@implementation YourTestModule

/**
 为module配置tabItem
 */
- (NSArray<TYTabItemAttribute *> *)registModuleTabItems {
    TYTabItemAttribute *tabAttr = [TYTabItemAttribute new];
    
    // 为tabItem配置viewController，根据需求自己包装navi
    UIViewController *pageVC = [UIViewController new];
    pageVC.title = @"YourPage";
    TPNavigationController *navi = [[TPNavigationController alloc] initWithRootViewController:pageVC];
    tabAttr.viewController = navi;
    
    // 配置tabItem的icon，可以根据需求自行调整RenderingMode
    // UIImageRenderingModeAlwaysTemplate:  始终将图片作为模板，图片颜色受tintColor影响
    // UIImageRenderingModeAlwaysOriginal:  始终将图片原样显示，图片不受tintColor影响
    // UIImageRenderingModeAutomatic:       根据场景判断图片的rRenderingMode，tabBar上icon为Template
    tabAttr.normalImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabAttr.selectedImage = [[UIImage imageNamed:@"YourTabIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 配置tabItem的title
    tabAttr.itemTitle = @"your_tab";
    
    return @[tabAttr];
}

@end
