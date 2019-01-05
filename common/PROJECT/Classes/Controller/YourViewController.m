//
//  YourViewController.m
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "YourViewController.h"

#import "UIViewController+TYNavigation.h"

@interface YourViewController ()

@end

@implementation YourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.text = @"your home vc";
    label.textColor = [UIColor darkGrayColor];
    [label sizeToFit];
    [self.view addSubview:label];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
    
    // setup navigation bar with TYNavigation
    [self setupNavi];
}

- (void)setupNavi {
    // ty_topBarxxxx means this method only effect on current view controller
    self.ty_topBarBackgroundColor = [UIColor whiteColor];
    self.ty_topBarSeperatorColor = [UIColor lightGrayColor];
    self.ty_topBarCenterItem = [TYNavigationBarItem itemWithMaker:^(TYNavigationBarItemMaker *maker) {
        maker.normalTitle(@"Home").titleFont([UIFont boldSystemFontOfSize:17]).normalTintColor([UIColor blackColor]);
    }];
    self.ty_topBarRightItem = [TYNavigationBarItem itemWithMaker:^(TYNavigationBarItemMaker *maker) {
        maker.normalTitle(@"Right").titleFont([UIFont systemFontOfSize:16]);
        maker.normalTintColor([UIColor blackColor]).selectTintColor([[UIColor blackColor] colorWithAlphaComponent:0.5]);
    }];
}

- (void)ty_naviRightItemAction:(TYNavigationBarItem *)item {
    NSLog(@"🎉 Right Item Action");
}

@end
