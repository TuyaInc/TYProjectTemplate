//
//  PROJECTHelpViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTHelpViewController.h"
#import "TYMarkdownView.h"

@interface PROJECTHelpViewController () <WKNavigationDelegate, UIScrollViewDelegate>
@property (nonatomic, strong) TYMarkdownView *markdownView;
@end

@implementation PROJECTHelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.markdownView = [[TYMarkdownView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.markdownView];

    NSData *mdData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"help" ofType:@"md"]];
    NSString *mdString = [[NSString alloc] initWithData:mdData encoding:NSUTF8StringEncoding];

    [self.markdownView loadWithMdString:mdString enableImage:YES];
}

@end
