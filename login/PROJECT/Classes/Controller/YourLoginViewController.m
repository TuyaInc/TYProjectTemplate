//
//  YourLoginViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourLoginViewController.h"

#import "TYModuleManager.h"

@interface YourLoginViewController ()

@end

@implementation YourLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"LoginPage";
    
    UIButton *loginBtn = [UIButton new];
    [loginBtn setTitle:@"login" forState:UIControlStateNormal];
    [loginBtn sizeToFit];
    [loginBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    loginBtn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
    
}

- (void)loginAction {
    [[NSUserDefaults standardUserDefaults] setObject:@(YES) forKey:@"TestUserIsLogin"];
    [[TYModule applicationService] reloadRootViewController];
}

@end