//
//  TYMarkdownView.h
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYMarkdownView : UIView
@property (nonatomic, strong) WKWebView *webView;

- (void)loadWithMdString:(NSString *)markdown enableImage:(BOOL)enableImage;

@end

NS_ASSUME_NONNULL_END
