//
//  TYMarkdownView.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "TYMarkdownView.h"

@interface TYMarkdownView () <WKNavigationDelegate>
@property (nonatomic, assign) CGFloat intrinsicContentHeight;
@end

@implementation TYMarkdownView

- (instancetype)init {
    self = [self initWithFrame:CGRectZero];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

- (void)setIntrinsicContentHeight:(CGFloat)intrinsicContentHeight {
    _intrinsicContentHeight = intrinsicContentHeight;
    [self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize {
    if (self.intrinsicContentHeight) {
        return CGSizeMake(UIViewNoIntrinsicMetric, self.intrinsicContentHeight);
    } else {
        return CGSizeZero;
    }
}

- (void)loadWithMdString:(NSString *)markdown enableImage:(BOOL)enableImage {
    NSBundle *bundle = [NSBundle bundleForClass:[TYMarkdownView class]];
    NSURL *htmlURL = [bundle URLForResource:@"index" withExtension:@"html"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:htmlURL];
    NSString *escapedMarkdown = [markdown stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet alphanumericCharacterSet]];
    NSString *imageOption = enableImage ? @"true" : @"false";
    NSString *script = [NSString stringWithFormat:@"window.showMarkdown('%@','%@')",escapedMarkdown, imageOption];
    WKUserScript *userScript = [[WKUserScript alloc] initWithSource:script
                                                      injectionTime:WKUserScriptInjectionTimeAtDocumentEnd
                                                   forMainFrameOnly:YES];
    
    WKUserContentController *controller = [WKUserContentController new];
    [controller addUserScript:userScript];
    
    WKWebViewConfiguration *config = [WKWebViewConfiguration new];
    config.userContentController = controller;
    
    self.webView = [[WKWebView alloc] initWithFrame:self.bounds configuration:config];
    self.webView.translatesAutoresizingMaskIntoConstraints = false;
    self.webView.navigationDelegate = self;
    self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:self.webView];
    self.webView.backgroundColor = self.backgroundColor;
    
    [self.webView loadRequest:request];
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    NSString *script = @"document.body.scrollHeight;";
    [self.webView evaluateJavaScript:script
                   completionHandler:^(id _Nullable result, NSError * _Nullable error) {
                       CGFloat height = [result floatValue];
                       self.intrinsicContentHeight = height;
                   }];
}

@end
