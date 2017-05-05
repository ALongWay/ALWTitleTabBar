//
//  ALWTitleTabBarConfiguration.h
//  ALWTitleTabBar
//
//  Created by lisong on 2017/5/5.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ALWTitleTabBarSelectedType) {
    ALWTitleTabBarSelectedTypeLine,
    ALWTitleTabBarSelectedTypeFrame
};

@interface ALWTitleTabBarConfiguration : UIView

@property (nonatomic, strong) UIFont        *titleFont;
@property (nonatomic, strong) UIColor       *titleNormalColor;
@property (nonatomic, strong) UIColor       *titleHighlightColor;

//内容view左右内边距，默认为0
@property (nonatomic, assign) CGFloat       contentViewHorizontalPadding;

//titleView左右内边距
@property (nonatomic, assign) CGFloat       titleViewPadding;

@property (nonatomic, assign) ALWTitleTabBarSelectedType    selectedType;

//ALWTitleTabBarSelectedTypeLine相关属性
@property (nonatomic, assign) CGFloat       lineHeight;
@property (nonatomic, assign) CGFloat       linePadding;//比标题内容左右各多出的宽度
@property (nonatomic, strong) UIColor       *lineColor;

//ALWTitleTabBarSelectedTypeFrame相关属性
@property (nonatomic, assign) CGFloat       frameHeight;
//选中框内边距
@property (nonatomic, assign) CGFloat       framePadding;//比标题内容左右各多出的宽度
@property (nonatomic, assign) CGFloat       frameCorner;
@property (nonatomic, strong) UIColor       *frameColor;

//titleView宽度是否相同，相同则不考虑内间距，默认为NO
@property (nonatomic, assign) BOOL          isEqualTitleViewWidth;

//动画效果相关属性
//该效果不太理想，待优化完成后再启用
//是否关闭选择标题后过渡效果，默认YES
//@property (nonatomic, assign) BOOL          isCloseTransitionEffect;
//是否关闭选择动画效果，默认NO
@property (nonatomic, assign) BOOL          isCloseSelectedAnimation;
//是否关闭自动将选中项滑动到中间位置，默认NO
@property (nonatomic, assign) BOOL          isCloseAutoScrollToCenter;

+ (ALWTitleTabBarConfiguration *)defaultConfiguration;

@end
