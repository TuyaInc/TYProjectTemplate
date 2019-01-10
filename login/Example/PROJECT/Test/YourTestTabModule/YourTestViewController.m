//
//  YourViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourTestViewController.h"

#import "TYModuleManager.h"
#import "TYUIKit.h"

@interface YourTestViewController ()

@end

@implementation YourTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *logoutBtn = [UIButton new];
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"logout" attributes:@{
                                                                                               NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle],
                                                                                               NSForegroundColorAttributeName: [[UIColor blueColor] colorWithAlphaComponent:0.8]
                                                                                               }];
    [logoutBtn setAttributedTitle:str forState:UIControlStateNormal];
    [logoutBtn sizeToFit];
    [logoutBtn addTarget:self action:@selector(logoutAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logoutBtn];
    logoutBtn.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
    
    // setup navigation bar with TYNavigationController module
    [self setupNavi];
}

- (void)setupNavi {
    // ty_topBarxxxx means this method only effect on current view controller
    self.ty_topBarBackgroundColor = [UIColor whiteColor];
    self.ty_topBarSeperatorColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.4];
    self.ty_topBarCenterItem = [TYNavigationBarItem itemWithMaker:^(TYNavigationBarItemMaker *maker) {
        maker.normalTitle(@"Home").titleFont([UIFont boldSystemFontOfSize:17]).normalTintColor([UIColor blackColor]);
    }];
}

#pragma mark - Action
- (void)logoutAction {
    [[NSUserDefaults standardUserDefaults] setObject:@(NO) forKey:@"TestUserIsLogin"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [[TYModule applicationService] reloadRootViewController];
}

@end
