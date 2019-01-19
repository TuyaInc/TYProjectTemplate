//
//  PROJECTNormalCellData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTNormalCellData.h"

#import "PROJECTDeviceQuickItemData.h"

@implementation PROJECTNormalCellData
@synthesize devId;
@synthesize name;
@synthesize iconUrl;
@synthesize showDeviceStatusColor;
@synthesize showDeviceStatus;
@synthesize isQuickToggle;
@synthesize isOpen;
@synthesize showStatusLabelBorder;
@synthesize showQuickControlView;
@synthesize quickDatas;
@synthesize showIconMask;
@synthesize isGroup;
@synthesize isOnline;
@synthesize groupId;
@synthesize showStatus;


+ (instancetype)testData {
    PROJECTNormalCellData *data = [PROJECTNormalCellData new];
    NSMutableArray *itemArr = [NSMutableArray new];
    for (NSInteger idx = 0; idx < 3; idx ++) {
        PROJECTDeviceQuickItemData *item = [PROJECTDeviceQuickItemData testData];
        [itemArr addObject:item];
    }
    data.name = @"(⊙ˍ⊙)";
    data.quickDatas = itemArr;
    data.showDeviceStatus = @"在线";
    data.showStatusLabelBorder = YES;
    data.showIconMask = NO;
    data.isQuickToggle = YES;
    data.showDeviceStatusColor = @"0x000000";
    return data;
}

@end
