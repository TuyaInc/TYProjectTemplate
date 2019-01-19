//
//  PROJECTSimpleCellContainerData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTSimpleCellContainerData.h"

#import "TYTSIViewDataProvider.h"
#import "PROJECTNormalCellData.h"


@implementation PROJECTSimpleCellContainerData
@synthesize leftCellData;
@synthesize rightCellData;

+ (instancetype)testData {
    PROJECTSimpleCellContainerData *data = [PROJECTSimpleCellContainerData new];
    data.leftCellData = [PROJECTNormalCellData testData];
    data.rightCellData = [PROJECTNormalCellData testData];
    return data;
}

@end
