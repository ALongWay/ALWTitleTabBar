//
//  ALWTitleTabBar.h
//  ALWTitleTabBar
//
//  Created by lisong on 2017/5/5.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import "ALWTitleTabBarConfiguration.h"

@protocol ALWTitleTabBarDelegate <NSObject>

- (BOOL)ALWTitleTabBarShouldSelectTitleWithIndex:(NSInteger)index;

- (void)ALWTitleTabBarDidSelectedTitleWithIndex:(NSInteger)index;

@end

@interface ALWTitleTabBar : UIView

@property (nonatomic, assign, readonly) NSInteger currentSelectedIndex;

@property (nonatomic, weak) id<ALWTitleTabBarDelegate> delegate;

/**
 使用默认frame
 
 @return return value description
 */
- (instancetype)init;

- (instancetype)initWithFrame:(CGRect)frame;

/**
 使用默认配置
 
 @param titleArray titleArray description
 */
- (void)resetTitleTabBarWithTitleArray:(NSArray<NSString *> *)titleArray;

- (void)resetTitleTabBarWithTitleArray:(NSArray<NSString *> *)titleArray configuration:(ALWTitleTabBarConfiguration *)configuration;

@end

