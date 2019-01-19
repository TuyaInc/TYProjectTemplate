//
//  PROJECTCommonHeaderData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTCommonHeaderData.h"
#import "PROJECTWeatherData.h"
#import "PROJECTNetworkTipsData.h"
#import "PROJECTScenesData.h"

@implementation PROJECTCommonHeaderData
@synthesize networkTips = _networkTips;
@synthesize weather = _weather;
@synthesize scenes = _scenes;
@synthesize enableVoiceControl = _enableVoiceControl;
@synthesize currentHomeName = _currentHomeName;

+ (instancetype)testData {
    PROJECTCommonHeaderData *data = [PROJECTCommonHeaderData new];
    data.enableVoiceControl = YES;
    data.currentHomeName = @"我的家";
    
    PROJECTNetworkTipsData *network = [PROJECTNetworkTipsData new];
    data.networkTips = network;
    
    PROJECTWeatherData *weather = [PROJECTWeatherData testData];
    data.weather = weather;
    
    PROJECTScenesData *scenes = [PROJECTScenesData testData];
    data.scenes = scenes;
    
    return data;
}

@end
