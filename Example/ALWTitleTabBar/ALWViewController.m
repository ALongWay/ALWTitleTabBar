//
//  ALWViewController.m
//  ALWTitleTabBar
//
//  Created by lisong on 05/05/2017.
//  Copyright (c) 2017 lisong. All rights reserved.
//

#import "ALWViewController.h"
#import "ALWTitleTabBar.h"

@interface ALWViewController ()

@end

@implementation ALWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGFloat centerY = 0;
    
    ALWTitleTabBar *titleTabBar = [[ALWTitleTabBar alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    ALWTitleTabBarConfiguration *config = [ALWTitleTabBarConfiguration defaultConfiguration];    
    [titleTabBar resetTitleTabBarWithTitleArray:@[@"普通抽奖", @"官方抽奖"] configuration:config];
    
    centerY = titleTabBar.frame.size.height * 2;
    
    titleTabBar.center = CGPointMake(self.view.center.x, centerY);
    [self.view addSubview:titleTabBar];
    
    
    ALWTitleTabBar *titleTabBar2 = [[ALWTitleTabBar alloc] init];
    [titleTabBar2 resetTitleTabBarWithTitleArray:@[@"普通抽奖", @"官方抽奖", @"官方抽奖sss", @"官方抽奖aaa", @"官方抽奖sdfsdf", @"官方抽奖wew", @"官方", @"官方抽", @"官", @"官方抽奖asdfasdfasdfasdf"]];
    
    centerY = CGRectGetMaxY(titleTabBar.frame) + titleTabBar.frame.size.height;
    
    titleTabBar2.center = CGPointMake(self.view.center.x, centerY);
    [self.view addSubview:titleTabBar2];
    
    
    ALWTitleTabBar *titleTabBar3 = [[ALWTitleTabBar alloc] init];
    ALWTitleTabBarConfiguration *config3 = [ALWTitleTabBarConfiguration defaultConfiguration];
    config3.selectedType = ALWTitleTabBarSelectedTypeFrame;
    [titleTabBar3 resetTitleTabBarWithTitleArray:@[@"普通抽奖", @"官方抽奖", @"官方抽奖sss", @"官方抽奖aaa", @"官方抽奖sdfsdf", @"官方抽奖wew", @"官方", @"官方抽", @"官", @"官方抽奖asdfasdfasdfasdf"] configuration:config3];
    
    centerY = CGRectGetMaxY(titleTabBar2.frame) + titleTabBar.frame.size.height;
    
    titleTabBar3.center = CGPointMake(self.view.center.x, centerY);
    [self.view addSubview:titleTabBar3];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
