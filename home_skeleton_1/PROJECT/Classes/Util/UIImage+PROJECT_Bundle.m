//
//  UIImage+PROJECT_Bundle.m
//  PROJECT
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "UIImage+PROJECT_Bundle.h"

@implementation UIImage (PROJECT_Bundle)

+ (UIImage *)tysh_skin_imageNamed:(NSString *)name {
    static NSString *bundlePath = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        bundlePath = [[NSBundle mainBundle] pathForResource:@"PROJECT_UISkin" ofType:@"bundle"];
    });

    NSBundle *skinBundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:name
                                inBundle:skinBundle
           compatibleWithTraitCollection:nil];
    
    return image;
}

@end
