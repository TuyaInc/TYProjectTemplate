//
//  YourUserCenterViewController.m
//  PROJECT_Example
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourHomeViewController.h"

#import "TYUIKit.h"

@interface YourHomeViewController ()

@end

@implementation YourHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.text = @"your home vc";
    label.textColor = [UIColor darkGrayColor];
    [label sizeToFit];
    [self.view addSubview:label];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
    
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
    self.ty_topBarRightItem = [TYNavigationBarItem itemWithMaker:^(TYNavigationBarItemMaker *maker) {
        maker.normalTitle(@"Right").titleFont([UIFont boldSystemFontOfSize:16]);
        maker.normalTintColor([UIColor blackColor]).selectTintColor([[UIColor blackColor] colorWithAlphaComponent:0.5]);
    }];
}

#pragma mark - <TYViewControllerNaviCallbackProtocol>
- (void)ty_naviRightItemAction:(TYNavigationBarItem *)item {
    NSLog(@"🎉 Right Item Action");
}


@end
