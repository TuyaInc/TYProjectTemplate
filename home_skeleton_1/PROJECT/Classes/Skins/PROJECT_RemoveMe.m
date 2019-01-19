//
//  PROJECT_RemoveMe.h
//  PROJECT
//
//  Created by USER_NAME on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR GROUP_NAME. All rights reserved.
//

#import "PROJECT_RemoveMe.h"
#import <objc/runtime.h>
#import "TYUIKit.h"

@interface PROJECT_RemoveMe ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation PROJECT_RemoveMe

- (Protocol *)__bindIViewPtl {
    return nil;
}

+ (Class)demoViewWithProtocol:(Protocol *)ptl {
    NSString *clsStr = [NSString stringWithFormat:@"%@_%@", NSStringFromClass([self class]), NSStringFromProtocol(ptl)];
    Class cls = NSClassFromString(clsStr);
    if (!cls) {
        cls = objc_allocateClassPair([self class], clsStr.UTF8String, 0);
        IMP bindIViewPtlImpl = imp_implementationWithBlock(^(id self){
            return ptl;
        });
        class_addMethod(cls, @selector(__bindIViewPtl), bindIViewPtlImpl, "@@:");
        class_addProtocol(cls, ptl);
        objc_registerClassPair(cls);
    }
    return cls;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor ty_colorWithHex:0xebf0f6];
        
        _label = [[UILabel alloc] initWithFrame:self.bounds];
        _label.font = [UIFont systemFontOfSize:16];
        _label.textColor = [UIColor darkTextColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.numberOfLines = 0;
        _label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:_label];
        
        NSString *ptlStr = NSStringFromProtocol([self __bindIViewPtl]);
        NSString *tips = [NSString stringWithFormat:@"View conform to protocol:\n%@", ptlStr];
        NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:tips];
        [attrStr addAttributes:@{NSForegroundColorAttributeName: [UIColor ty_colorWithHex:0x364e68],
                                 NSFontAttributeName: [UIFont boldSystemFontOfSize:16]}
                         range:NSMakeRange(tips.length - ptlStr.length, ptlStr.length)];
        _label.attributedText = attrStr;
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(15, self.bounds.size.height - 1.f, [UIScreen mainScreen].bounds.size.width - 30.f, 1.f / [UIScreen mainScreen].scale)];
        line.backgroundColor = [UIColor ty_colorWithHex:0x69779b];
        [self addSubview:line];
    }
    return self;
}

+ (UIView<TYTSIViewComponent> *)getComponentView {
    return [[self alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 80)];
}

+ (CGSize)getViewSizeWithEntity:(__kindof id<TYTSIViewData>)entity preferSize:(CGSize)preferSize {
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 80);
}

- (void)refreshWithData:(__kindof id<TYTSIViewData>)data {
    
}

@end
