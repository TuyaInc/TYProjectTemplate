//
//  PROJECT_RemoveMe.h
//  PROJECT
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYTSIViewComponent.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * 我就是个 Demo 视图，占位用的，写好对应视图把我删掉就好了
 */
@interface PROJECT_RemoveMe : UIView <TYTSIViewComponent>

+ (Class)demoViewWithProtocol:(Protocol *)ptl;

@end

NS_ASSUME_NONNULL_END
