//
//  ALWTitleTabBarConfiguration.m
//  ALWTitleTabBar
//
//  Created by lisong on 2017/5/5.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import "ALWTitleTabBarConfiguration.h"

#define kConfigColorWithRRGGBB(RRGGBB)          [UIColor colorWithRed:((float)((RRGGBB & 0xFF0000) >> 16))/255.0 green:((float)((RRGGBB & 0xFF00) >> 8))/255.0 blue:((float)(RRGGBB & 0xFF))/255.0 alpha:1]

@implementation ALWTitleTabBarConfiguration

+ (ALWTitleTabBarConfiguration *)defaultConfiguration
{
    ALWTitleTabBarConfiguration *config = [[ALWTitleTabBarConfiguration alloc] init];
    config.titleFont = [UIFont systemFontOfSize:15];
    config.titleNormalColor = kConfigColorWithRRGGBB(0x000000);
    config.titleHighlightColor = kConfigColorWithRRGGBB(0xf97b6b);
    config.contentViewHorizontalPadding = 0;
    config.titleViewPadding = 16;
    config.selectedType = ALWTitleTabBarSelectedTypeLine;
    config.lineHeight = 3;
    config.linePadding = 8;//比标题内容左右各多出的宽度
    config.lineColor = kConfigColorWithRRGGBB(0xf97b6b);
    config.frameHeight = 30;
    config.framePadding = 8;//比标题内容左右各多出的宽度
    config.frameCorner = config.frameHeight / 2.0;
    config.frameColor = kConfigColorWithRRGGBB(0xf97b6b);
    config.isEqualTitleViewWidth = NO;
    //    config.isCloseTransitionEffect = YES;
    config.isCloseSelectedAnimation = NO;
    config.isCloseAutoScrollToCenter = NO;
    
    return config;
}

- (void)setSelectedType:(ALWTitleTabBarSelectedType)selectedType
{
    _selectedType = selectedType;
    
    if (selectedType == ALWTitleTabBarSelectedTypeFrame
        && [self.titleHighlightColor isEqual:self.frameColor]) {
        self.titleHighlightColor = [UIColor whiteColor];
    }
}

@end
