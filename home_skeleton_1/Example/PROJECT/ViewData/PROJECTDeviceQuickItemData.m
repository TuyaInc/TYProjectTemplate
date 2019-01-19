//
//  PROJECTDeviceQuickItemData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTDeviceQuickItemData.h"

@implementation PROJECTDeviceQuickItemData
@synthesize imageName;
@synthesize title;
@synthesize subTitle;
@synthesize dpId;
@synthesize iconColor;
@synthesize isItemEnable;

+ (instancetype)quickItemWith:(NSString *)icon name:(NSString *)name value:(NSString *)value {
    PROJECTDeviceQuickItemData *item = [PROJECTDeviceQuickItemData new];
    item.imageName = icon;
    item.title = name;
    item.subTitle = value;
    return item;
}

+ (instancetype)testData {
    return [self quickItemWith:@"icon" name:@"name" value:@"value"];
}



@end
