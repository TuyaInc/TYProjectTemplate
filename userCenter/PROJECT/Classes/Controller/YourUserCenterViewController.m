//
//  YourUserCenterViewController.m
//  PROJECT_Example
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "YourUserCenterViewController.h"

@interface YourUserCenterViewController ()

@end

@implementation YourUserCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.text = @"your center vc";
    label.textColor = [UIColor darkGrayColor];
    [label sizeToFit];
    [self.view addSubview:label];
    label.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.0, [UIScreen mainScreen].bounds.size.height/2.0);
}


@end
