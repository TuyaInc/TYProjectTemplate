//
//  YourApplicationModule.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestApplicationModuleImpl.h"

#import <TuyaSmartBaseKit/TuyaSmartUser.h>

#import "TYModuleMainLoginProtocol.h"
#import "TYNavigationController.h"

@implementation YourTestApplicationModuleImpl

#pragma mark - <TYModuleApplicationBlueprint>

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
 equivalent to didFinishLaunching method in AppDelegate.m
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary *)launchOptions {
    
    [self reloadRootViewController];
    
    return YES;
}

- (void)reloadRootViewController {
    
    BOOL kDebugLogin = NO;
#ifdef DEBUG
    kDebugLogin = [[[NSUserDefaults standardUserDefaults] valueForKey:@"TestUserIsLogin"] boolValue];
#endif
    
    UIViewController *rootVC;
    if ([TuyaSmartUser sharedInstance].isLogin || kDebugLogin) {
        // 通过 TYModule 提供的快捷方法获取 tabService，并通过 tabService 获取 tabBarController
        // get tab controller by tab service
        id<TYModuleTabBarBlueprint> tabService = [TYModule tabService];
        if (tabService.tabItemAttributes.count == 0) {
            rootVC = [UIViewController new];
        } else if (tabService.tabItemAttributes.count == 1) {
            rootVC = tabService.tabItemAttributes[0].viewController;
        } else {
            rootVC = tabService.tabBarController;
        }
    } else {
        // 获取登录模块以及登录模页面控制器
        // get login module and login view controller
        id loginModuleImpl = [TYModule serviceOfProtocol:@protocol(TYModuleMainLoginProtocol)];
        rootVC = [loginModuleImpl mainLoginViewController];
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
