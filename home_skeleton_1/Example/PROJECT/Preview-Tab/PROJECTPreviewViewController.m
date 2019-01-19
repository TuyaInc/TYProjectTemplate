//
//  PROJECTPreviewViewController.m
//  PROJECT
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTPreviewViewController.h"
#import "TYTSUISkinManager.h"
#import "TYSHTopBarSkeleton.h"
#import "TYSHHeader1stSkeleton.h"
#import "TYSHHeader2ndSkeleton.h"
#import "TYSHHeader3rdSkeleton.h"
#import "TYSHTabHoverSkeleton.h"
#import "TYSHDeviceNormalCellSkeleton.h"
#import "TYSHDeviceShareTipCellSkeleton.h"
#import "TYSHDeviceSimpleCellContainerSkeleton.h"
#import "PROJECTDataProvider.h"
#import "UIColor+TYCategory.h"

@interface PROJECTPreviewViewController () <TYTSViewConfigProtocol, TYTSViewDataProviderProtocol, TYTSViewRequestProtocol>
@property (nonatomic, strong) PROJECTDataProvider *dataProvider;
@end

@implementation PROJECTPreviewViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.configDelegate = self;
        self.dataProviderDelegate = self;
        self.requestDelegate = self;
        self.dataProvider = [[PROJECTDataProvider alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor ty_colorWithHex:0xFAFAFB];
}

#pragma mark - Config Delegate

- (TYTSViewConfig *)getViewConfig {
    TYTSViewConfig *config = [TYTSViewConfig configInstance];
    
    TYTSViewConfigItem *topbar = [TYTSViewConfigItem configInstance];
    topbar.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHTopBarIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHTopBarIViewComponent)))
    .setDataProtocol(@protocol(TYSHCommonHeaderIViewData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:topbar];
    
    TYTSViewConfigItem *networkTips = [TYTSViewConfigItem configInstance];
    networkTips.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHHeader1stIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHHeader1stIViewComponent)))
    .setDataProtocol(@protocol(TYSHCommonHeaderIViewData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:networkTips];
    
    TYTSViewConfigItem *weather = [TYTSViewConfigItem configInstance];
    weather.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHHeader2ndIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHHeader2ndIViewComponent)))
    .setDataProtocol(@protocol(TYSHCommonHeaderIViewData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:weather];

    TYTSViewConfigItem *scenes = [TYTSViewConfigItem configInstance];
    scenes.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHHeader3rdIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHHeader3rdIViewComponent)))
    .setDataProtocol(@protocol(TYSHCommonHeaderIViewData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:scenes];
    
    TYTSViewConfigItem *tabHover = [TYTSViewConfigItem configInstance];
    tabHover.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHTabHoverIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHTabHoverIViewComponent)))
    .setDataProtocol(@protocol(TYSHTabRoomsIViewData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:tabHover];

    TYTSViewConfigItem *onePerRowDevice = [TYTSViewConfigItem configInstance];
    onePerRowDevice.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHDeviceNormalCellIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHDeviceNormalCellIViewComponent)))
    .setDataProtocol(@protocol(TYSHDeviceNormalCellData))
    .setIsMultipleInstance(YES);
    [config addNextConfigItem:onePerRowDevice];

    TYTSViewConfigItem *sharedHeader = [TYTSViewConfigItem configInstance];
    sharedHeader.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHDeviceShareTipCellIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHDeviceShareTipCellIViewComponent)))
    .setDataProtocol(@protocol(TYSHDeviceShareTipCellData))
    .setIsMultipleInstance(NO);
    [config addNextConfigItem:sharedHeader];
    
    TYTSViewConfigItem *twoPerRowDevice = [TYTSViewConfigItem configInstance];
    twoPerRowDevice.setViewClass([TYTSUISkinManager getViewClassWithIViewComponent:@protocol(TYSHDeviceSimpleCellIViewComponent)])
    .setViewIndentify(NSStringFromProtocol(@protocol(TYSHDeviceSimpleCellIViewComponent)))
    .setDataProtocol(@protocol(TYSHDeviceSimpleCellContainerData))
    .setIsMultipleInstance(YES);
    [config addNextConfigItem:twoPerRowDevice];
    
    return config;
}

#pragma mark - Request Delegate

- (void)fetchDataByType:(TYTSRequestLoadingType)loadType success:(TYTSRequestSuccessCallback)successCb failue:(TYTSRequestFailureCallback)failueCb {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        successCb(self.dataProvider);
    });
}

- (void)onRequestbefore {
    
}

- (void)onRequestAfter {
    
}

#pragma mark - DataProvider Delegate

- (id<TYTSIViewDataProvider>)getDataProvider {
    return self.dataProvider;
}

@end
