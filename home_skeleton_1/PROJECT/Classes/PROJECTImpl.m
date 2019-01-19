//
//  PROJECTImpl.m
//  PROJECT
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "PROJECTImpl.h"
#import "TYSHUIBinder.h"
#import "PROJECT_RemoveMe.h"

@implementation PROJECTImpl

- (instancetype)init {
    self = [super init];
    if (self) {
        /**
         * 模块初始化时，进行首页皮肤与骨架的绑定
         */
        [TYSHUIBinder bindUISkin:self];
    }
    return self;
}

/**
 * 以下方法用来返回对应首页视图协议的实现类
 *
 * 假设单行设备的实现类为 XXXDeviceNormalView，则找到 -viewClassForDeviceNormalSkeleton 方法，替换以下内容：
 *
 *  - (Class)viewClassForDeviceNormalSkeleton {
 *      return [XXXDeviceNormalView class];
 *  }
 *
 * 若某些视图不需要则直接 "return nil;" 即可
 */

// 返回单行设备 Cell 视图
- (Class)viewClassForDeviceNormalSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHDeviceNormalCellIViewComponent")];
}

// 返回设备分享列表头部操作栏
- (Class)viewClassForDeviceShareTipSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHDeviceShareTipCellIViewComponent")];
}

// 返回一行两设备 Cell 视图
- (Class)viewClassForDeviceSimpleSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHDeviceSimpleCellIViewComponent")];
}

// 返回设备列表为空时的提示视图
- (Class)viewClassForDeviceEmptyTipSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHDeviceListEmptyTipViewComponent")];
}

// 返回首页头部第一部分
- (Class)viewClassForHeader1stSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHHeader1stIViewComponent")];
}

// 返回首页头部第二部分
- (Class)viewClassForHeader2ndSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHHeader2ndIViewComponent")];
}

// 返回首页头部第三部分
- (Class)viewClassForHeader3rdSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHHeader3rdIViewComponent")];
}

// 返回房间切换控制栏视图
- (Class)viewClassForTabHoverSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHTabHoverIViewComponent")];
}

// 返回顶部操作栏视图
- (Class)viewClassForTopBarSkeleton {
    //TODO: replace me.
    return [PROJECT_RemoveMe demoViewWithProtocol:NSProtocolFromString(@"TYSHTopBarIViewComponent")];
}


@end
