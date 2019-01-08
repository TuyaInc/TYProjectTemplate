//
//  YourApplicationModule.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.

//

#import "YourTestApplicationModuleImpl.h"

#import "TYModuleMainLoginProtocol.h"
#import "TYNavigationController.h"

@implementation YourTestApplicationModuleImpl

- (UIWindow *)window {
    if (![UIApplication sharedApplication].delegate.window) {
        UIWindow *win = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        win.backgroundColor = [UIColor whiteColor];
        [UIApplication sharedApplication].delegate.window = win;
    }
    return [UIApplication sharedApplication].delegate.window;
}

/**
 相当于AppDelegate.m中的didFinishLaunching回调
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    
    [self reloadRootViewController];
    
    return YES;
}

- (void)reloadRootViewController {
    // 你可以在这里处理一些自己的逻辑，并加载正确的rootVC
    
    // 此处简单示意根据用户是否登录显式不同的rootVC
    UIViewController *rootVC;
    BOOL userDidLogin = YES;
    if (!userDidLogin) {
        id loginModuleImpl = [TYModule serviceOfProtocol:@protocol(TYModuleMainLoginProtocol)];
        UIViewController *loginVC = [loginModuleImpl mainLoginViewController];
        loginVC.title = @"YourLoginVC";
    
        rootVC = loginVC;
    } else {
        // 通过 TYModule 提供的快捷方法获取 tabService，并通过 tabService 获取 tabBarController
        UIViewController *tabVC = [TYModule tabService].tabBarController;
        rootVC = tabVC;
    }
    
    [self resetRootViewController:rootVC];
}

- (void)resetRootViewController:(__kindof UIViewController *)rootVC {
    UIViewController *vc;
    if ([rootVC isKindOfClass:[UINavigationController class]] || [rootVC isKindOfClass:[UITabBarController class]]) {
        vc = rootVC;
    } else {
        vc = [[TYNavigationController alloc] initWithRootViewController:rootVC];
    }
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
}

- (UIViewController *)currentRootViewController {
    return self.window.rootViewController;
}

#pragma mark - <UIApplicationDelegate>


@end
