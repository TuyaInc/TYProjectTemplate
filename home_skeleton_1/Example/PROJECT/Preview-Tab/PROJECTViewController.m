//
//  PROJECTViewController.m
//  TYSmartHouseLightUISkin
//
//  Created by ${USER_NAME} on ${TODAYS_DATE}.
//  Copyright (c) ${TODAYS_YEAR} ${GROUP_NAME}. All rights reserved.
//

#import "PROJECTViewController.h"
#import "PROJECTPreviewViewController.h"
#import "TYSHTopBarSkeleton.h"
#import "TYSHHeader1stSkeleton.h"
#import "TYSHHeader2ndSkeleton.h"
#import "TYSHHeader3rdSkeleton.h"
#import "TYSHTabHoverSkeleton.h"
#import "TYSHDeviceNormalCellSkeleton.h"
#import "TYSHDeviceShareTipCellSkeleton.h"
#import "TYSHDeviceSimpleCellContainerSkeleton.h"
#import "TYUIKit.h"

@interface PROJECTViewController ()
<TYTSViewCallbackProtocol,
TYSHTopBarIViewCallback,
TYSHHeader1stIViewCallback,
TYSHHeader2ndIViewCallback,
TYSHHeader3rdIViewCallback,
TYSHDeviceNormalCellCallback,
TYSHDeviceShareTipCellCallback,
TYSHDeviceSimpleCellCallback>
@property (nonatomic, strong) PROJECTPreviewViewController *demoVc;
@end

@implementation PROJECTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.demoVc = [[PROJECTPreviewViewController alloc] initWithNibName:nil bundle:nil];
    self.demoVc.callbackDelegate = self;
    
    [self addChildViewController:self.demoVc];
    self.demoVc.view.frame = self.view.bounds;
    [self.view addSubview:self.demoVc.view];
    [self.demoVc willMoveToParentViewController:self];

    self.view.backgroundColor = TY_HexColor(0xFAFAFB);
    
    if (@available(iOS 11, *)) {
        self.demoVc.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Callback Delegate

- (void)viewComponentTriggerAddDeviceAction:(id<TYTSIViewComponent>)viewComp {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)viewComponentTriggerAllRoomsAction:(id<TYTSIViewComponent>)viewComp {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)viewComponentTriggerHomeSelectAction:(id<TYTSIViewComponent>)viewComp {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)viewComponentTriggerVoiceControlAction:(id<TYTSIViewComponent>)viewComp {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)tipCellSetAction:(id<TYSHDeviceShareTipCellData>)data {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)deviceCell:(id<TYSHDeviceNormalCellData>)cellData quickFoldAction:(BOOL)isFold {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)deviceCell:(id<TYSHDeviceNormalCellData>)cellData quickItemAction:(id<TYSHDeviceQuickControlItemData>)item {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)deviceCell:(id<TYSHDeviceNormalCellData>)cellData quickSwitchAction:(BOOL)isOn {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)deviceCellTapAction:(id<TYSHDeviceNormalCellData>)cellData {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)viewComponent:(id<TYTSIViewComponent>)viewComponent didTappedSceneItem:(id<TYSHSceneItem>)sceneItem {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewComponentTriggerShowWeatherInfoAction:(id<TYTSIViewComponent>)viewComp {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewComponentTriggerNetworkCheck:(id<TYTSIViewComponent>)viewComponent {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
