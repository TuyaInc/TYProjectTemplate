//
//  PROJECTDeviceQuickItemData.h
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TYSHDeviceNormalCellSkeleton.h"

@interface PROJECTDeviceQuickItemData : NSObject <TYSHDeviceQuickControlItemData>

+ (instancetype)quickItemWith:(NSString *)icon name:(NSString *)name value:(NSString *)value;

+ (instancetype)testData;

@end
