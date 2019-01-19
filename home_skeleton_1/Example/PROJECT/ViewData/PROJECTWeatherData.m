//
//  PROJECTWeatherData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTWeatherData.h"

@implementation PROJECTWeatherDashData
@synthesize roomName = _roomName;
@synthesize name = _name;
@synthesize unit = _unit;
@synthesize value = _value;

@end

@implementation PROJECTWeatherData
@synthesize hasGeo = _hasGeo;
@synthesize showWeather = _showWeather;
@synthesize weatherIcon = _weatherIcon;
@synthesize weatherTitle = _weatherTitle;
@synthesize weatherSubTitle = _weatherSubTitle;
@synthesize dashItems = _dashItems;

+ (instancetype)testData {
    PROJECTWeatherData *data = [PROJECTWeatherData new];
    data.hasGeo = YES;
    data.showWeather = YES;
    data.weatherIcon = @"https://images.tuyacn.com/smart/weather/icon3/SUNNY@3x.png";
    data.weatherTitle = @"晴天";
    data.weatherSubTitle = @"设置家庭位置，获得更多信息";
    
    NSMutableArray *dashItems = @[].mutableCopy;
    
    PROJECTWeatherDashData *dashData = [PROJECTWeatherDashData new];
    dashData.roomName = @"";
    dashData.name = @"室外风等";
    dashData.unit = @"级";
    dashData.value = @"3";
    [dashItems addObject:dashData];
    
    dashData = [PROJECTWeatherDashData new];
    dashData.roomName = @"";
    dashData.name = @"室外温度";
    dashData.unit = @"℃";
    dashData.value = @"23";
    [dashItems addObject:dashData];

    dashData = [PROJECTWeatherDashData new];
    dashData.roomName = @"";
    dashData.name = @"室外湿度";
    dashData.unit = @"%";
    dashData.value = @"80";
    [dashItems addObject:dashData];
    
    data.dashItems = dashItems.copy;
    
    return data;
}

@end

