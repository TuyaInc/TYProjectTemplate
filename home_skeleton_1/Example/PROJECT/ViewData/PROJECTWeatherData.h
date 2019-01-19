//
//  PROJECTWeatherData.h
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TYSHCommonHeaderIViewData.h>

NS_ASSUME_NONNULL_BEGIN

@interface PROJECTWeatherDashData : NSObject <TYSHWeatherDashItem>

@end

@interface PROJECTWeatherData : NSObject <TYSHWeatherIViewData>

+ (instancetype)testData;

@end

NS_ASSUME_NONNULL_END
