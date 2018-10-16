//
//  PROJECTImpl.m
//  PROJECT_Example
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTImpl.h"

#import "TYModule.h"

@implementation PROJECTImpl

/**
 相当于AppDelegate.m中的didFinishLaunching回调
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions config:(id<TYModuleConfigBlueprint>)config {
    
    // TODO: you can do anything you want
    
    // 加载rootViewController
    [self reloadRootViewController];
    
    return YES;
}

/**
 重新加载rootVC
 */
- (void)reloadRootViewController {
    // TODO: load root view controller
    
    // 你可以在这里处理一些自己的逻辑，并加载正确的rootVC
    // 此处简单示意根据用户是否登录显式不同的rootVC
    UIViewController *rootVC;
    BOOL userDidLogin = YES;
    if (!userDidLogin) {
        UIViewController *loginVC = [UIViewController new];
        loginVC.view.backgroundColor = [UIColor whiteColor];
        loginVC.title = @"login";
        UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:loginVC];
        rootVC = navi;
    } else {
        // 通过 TYModule 提供的快捷方法获取 tabService，并通过 tabService 获取 tabBarController
        UIViewController *tabVC = [TYModule tabService].tabBarController;
        rootVC = tabVC;
    }
    
    [self resetRootViewController:rootVC];
}

/**
 重置rootVC
 */
- (void)resetRootViewController:(__kindof UIViewController *)rootVC {
    if (rootVC && rootVC != self.window.rootViewController) {
        self.window.rootViewController = rootVC;
        [self.window makeKeyAndVisible];
    }
}

#pragma mark - <UIApplicationDelegate>
// 如果你的业务中需要处理任何<UIAppDelegate>的回调，请写在这里

@end
