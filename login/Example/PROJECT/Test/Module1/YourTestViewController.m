//
//  YourViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestViewController.h"

#import "TYModuleManager.h"

@interface YourTestViewController ()

@end

@implementation YourTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *logoutBtn = [UIButton new];
    [logoutBtn setTitle:@"logout" forState:UIControlStateNormal];
    [logoutBtn sizeToFit];
    [logoutBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [logoutBtn addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logoutBtn];
    logoutBtn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
}

- (void)loginAction {
    [[NSUserDefaults standardUserDefaults] setObject:@(NO) forKey:@"userIsLogin"];
    [[TYModule applicationService] reloadRootViewController];
}

@end
