//
//  PROJECTDataProvider.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTDataProvider.h"
#import "TYSHTopBarSkeleton.h"
#import "TYSHHeader1stSkeleton.h"
#import "TYSHHeader2ndSkeleton.h"
#import "TYSHHeader3rdSkeleton.h"
#import "TYSHTabHoverSkeleton.h"
#import "TYSHDeviceNormalCellSkeleton.h"
#import "TYSHDeviceShareTipCellSkeleton.h"
#import "TYSHDeviceSimpleCellContainerSkeleton.h"
#import "PROJECTDataProvider.h"

#import "PROJECTSimpleCellContainerData.h"
#import "PROJECTDeviceShareTipCellData.h"
#import "PROJECTNormalCellData.h"
#import "PROJECTCommonHeaderData.h"
#import "PROJECTTabRoomsData.h"

@implementation PROJECTDataProvider

- (NSArray<id<TYTSIViewData>> *)getGroupViewData:(Protocol *)pt withViewIdentifier:(NSString *)viewIdentifier {
    if (pt == @protocol(TYSHDeviceSimpleCellContainerData)) {
        return @[[PROJECTSimpleCellContainerData testData], [PROJECTSimpleCellContainerData testData]];
    }
    else if (pt == @protocol(TYSHDeviceNormalCellData)) {
        return @[[PROJECTNormalCellData testData], [PROJECTNormalCellData testData]];
    }
    return nil;
}

- (id<TYTSIViewData>)getViewData:(Protocol *)pt withViewIdentifier:(NSString *)viewIdentifier {
    if (pt == @protocol(TYSHCommonHeaderIViewData)) {
        return [PROJECTCommonHeaderData testData];
    }
    else if (pt == @protocol(TYSHDeviceShareTipCellData)) {
        return [PROJECTDeviceShareTipCellData testData];
    }
    else if (pt == @protocol(TYSHTabRoomsIViewData)) {
        return [PROJECTTabRoomsData testData];
    }
    return nil;
}

@end
