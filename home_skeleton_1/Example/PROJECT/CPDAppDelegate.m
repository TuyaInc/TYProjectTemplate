//
//  CPDAppDelegate.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "CPDAppDelegate.h"
#import "PROJECTImpl.h"

/**
 AppDelegate是一个只存在于你本地的类，它不会被合并到涂鸦的工程当中
 */
@implementation CPDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /**
     * 这行代码尽在本地 demo 有效，忽略即可
     */
    [PROJECTImpl new];
    
    return YES;
}

@end
