//
//  AppDelegate.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "AppDelegate.h"

#import <TuyaSmartBaseKit/TuyaSmartSDK.h>
#import <TuyaSmartBaseKit/TuyaSmartUser.h>

#import "TYModuleManager.h"

static NSString * const kDebugSDKInfo_AppKey = @"";
static NSString * const kDebugSDKInfo_SecretKey = @"";

static NSString * const kDebugCountInfo_CountryCode = @"";
static NSString * const kDebugCountInfo_PhoneNumber = @"";
static NSString * const kDebugCountInfo_Password = @"";

/**
 AppDelegate是一个只存在于你本地的类，它不会被合并到涂鸦的工程当中
 你可以在这里写任何的用于开发阶段调试的代码，包括涂鸦SDK的注册(如有需要)
 
 涂鸦工程中已经包含了SDK的注册逻辑，它会在打包时被正确配置，所以你的SDK注册代码属于开发调试阶段代码
 */
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    if (kDebugSDKInfo_AppKey.length == 0 || kDebugSDKInfo_SecretKey.length == 0) {
        [[TYModuleManager sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
        return YES;
    }
    
    // 注册涂鸦sdk
    // regist Tuya SDK with your key
    [[TuyaSmartSDK sharedInstance] startWithAppKey:kDebugSDKInfo_AppKey secretKey:kDebugSDKInfo_SecretKey];
    
    // 调试登录
    // login for debug
    
    if (![TuyaSmartUser sharedInstance].isLogin) {
        NSLog(@"login ...");
        [[TuyaSmartUser sharedInstance] loginByPhone:kDebugCountInfo_CountryCode phoneNumber:kDebugCountInfo_PhoneNumber password:kDebugCountInfo_Password success:^{
            NSLog(@"login success");
            [[TYModuleManager sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
        } failure:^(NSError *error) {
            NSString *msg = [NSString stringWithFormat:@"login fail %@", error];
            NSAssert(!error, msg);
        }];
    } else {
        /*
         调用TYModuleManager，启动模块化加载
         TYModuleManager会为你提供一些符合涂鸦模块化标准的服务
         这些服务能够帮助你更好的完成开发
         */
        
        [[TYModuleManager sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    }
    
    return YES;
}

/*
 如果开发调试阶段需要其它的<UIApplicationDelegate>方法，你可以直接写在这里
 如果这些代码最终希望能够合并到涂鸦工程，请将代码写在你的Application模块中
 TYModuleManager在完成基础服务加载以后，会回调Application模块
 */

#pragma mark - Forward
/*
 将UIAppDelegate中的方法转发给application模块
 涂鸦工程的AppDelegate.m没有包含任何<UIApplicationDelegate>方法，所有<UIApplicationDelegate>方法均会转发
 
 转发只发生在AppDelegate.m中找不到方法，实际上AppDelegate.m中方法优先级更高
 所以开发调试阶段的代码可以直接写在AppDelegate.m
 */
- (id)forwardingTargetForSelector:(SEL)aSelector {
    return [[TYModule applicationService] respondsToSelector:aSelector] ? [TYModule applicationService] : nil;
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    return [super respondsToSelector:aSelector] || [[TYModule applicationService] respondsToSelector:aSelector];
}

@end
