//
//  PROJECTTabRoomsData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTTabRoomsData.h"

@implementation PROJECTTabRoomsData
@synthesize roomList = _roomList;
@synthesize currentRoomIndex = _currentRoomIndex;
@synthesize tabIndicatorColor = _tabIndicatorColor;

+ (instancetype)testData {
    PROJECTTabRoomsData *data = [PROJECTTabRoomsData new];
    
    data.roomList = @[@"全部设备",@"客厅",@"厨房",@"主卧",@"次卧",@"书房",@"卫生间",@"杂物间",@"设备间"];
    data.currentRoomIndex = 0;
    data.tabIndicatorColor = [UIColor orangeColor];
    
    return data;
}

@end
