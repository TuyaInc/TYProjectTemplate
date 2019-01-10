//
//  YourLoginViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourLoginViewController.h"

#import "TYModuleManager.h"
#import "TYUIKit.h"

@interface YourLoginViewController ()

@end

@implementation YourLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *loginBtn = [UIButton new];
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"login" attributes:@{
                                                                                               NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle],
                                                                                               NSForegroundColorAttributeName: [[UIColor blueColor] colorWithAlphaComponent:0.8]
                                                                                               }];
    [loginBtn setAttributedTitle:str forState:UIControlStateNormal];
    [loginBtn sizeToFit];
    [loginBtn addTarget:self action:@selector(loginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    loginBtn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
    
    // setup navigation bar with TYNavigationController module
    [self setupNavi];
}

- (void)setupNavi {
    // ty_topBarxxxx means this method only effect on current view controller
    self.ty_topBarBackgroundAlpha = 0;
    self.ty_topBarSeperatorAlpha = 0;
    self.ty_topBarCenterItem = [TYNavigationBarItem itemWithMaker:^(TYNavigationBarItemMaker *maker) {
        maker.normalTitle(@"LoginPage").titleFont([UIFont boldSystemFontOfSize:17]).normalTintColor([UIColor blackColor]);
    }];
}

- (void)loginAction {
    [[NSUserDefaults standardUserDefaults] setObject:@(YES) forKey:@"TestUserIsLogin"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[TYModule applicationService] reloadRootViewController];
}

@end
