//
//  YourHomeViewController.m
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "YourHomeViewController.h"

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
}


@end
