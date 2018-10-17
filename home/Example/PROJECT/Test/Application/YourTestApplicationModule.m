//
//  YourApplicationModule.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.

//

#import "YourTestApplicationModule.h"

#import "TYModule.h"

#import "TYModuleMainLoginProtocol.h"

@implementation YourTestApplicationModule
/**
 相当于AppDelegate.m中的didFinishLaunching回调
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions config:(id<TYModuleConfigBlueprint>)config {
    
    [self reloadRootViewController];
    
    return YES;
}

- (void)reloadRootViewController {
    // 你可以在这里处理一些自己的逻辑，并加载正确的rootVC
    
    // 此处简单示意根据用户是否登录显式不同的rootVC
    UIViewController *rootVC;
    BOOL userDidLogin = YES;
    if (!userDidLogin) {
        id loginModuleImpl = [[[TYModule configService] validClassOfConfigKeyPath:@"login"] new];
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
    if (rootVC && rootVC != self.window.rootViewController) {
        self.window.rootViewController = rootVC;
        [self.window makeKeyAndVisible];
    }
}

#pragma mark - <UIApplicationDelegate>


@end
