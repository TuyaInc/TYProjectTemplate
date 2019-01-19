//
//  PROJECTDeviceShareTipCellData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTDeviceShareTipCellData.h"

@implementation PROJECTDeviceShareTipCellData
@synthesize showTip;
@synthesize title;
@synthesize hideSetButton;

+ (instancetype)testData {
    PROJECTDeviceShareTipCellData *data = [PROJECTDeviceShareTipCellData new];
    data.showTip = @"分享设备";
    data.title = @"分享";
    data.hideSetButton = NO;
    return data;
}

@end
