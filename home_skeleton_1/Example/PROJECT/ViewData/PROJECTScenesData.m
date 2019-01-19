//
//  PROJECTScenesData.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTScenesData.h"

@implementation PROJECTSceneItem
@synthesize name = _name;
@synthesize background = _background;

@end

@implementation PROJECTScenesData
@synthesize scenesList = _scenesList;

+ (instancetype)testData {
    PROJECTScenesData *data = [PROJECTScenesData new];
    
    NSMutableArray *items = @[].mutableCopy;
    
    PROJECTSceneItem *item = [PROJECTSceneItem new];
    item.name = @"下班回家";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];
    
    item = [PROJECTSceneItem new];
    item.name = @"早上起床";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];
    
    item = [PROJECTSceneItem new];
    item.name = @"开窗";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];

    item = [PROJECTSceneItem new];
    item.name = @"娱乐模式";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];

    item = [PROJECTSceneItem new];
    item.name = @"娱乐模式";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];

    item = [PROJECTSceneItem new];
    item.name = @"娱乐模式";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];

    item = [PROJECTSceneItem new];
    item.name = @"娱乐模式";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];

    item = [PROJECTSceneItem new];
    item.name = @"娱乐模式";
    item.background = @"https://images.tuyacn.com/smart/rule/cover/bedroom6.png";
    [items addObject:item];
    
    data.scenesList = items.copy;
    
    return data;
}

@end
