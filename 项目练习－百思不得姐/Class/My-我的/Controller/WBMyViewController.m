//
//  WBMyViewController.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBMyViewController.h"

@interface WBMyViewController ()

@end

@implementation WBMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    //设置导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"nav_coin_icon" SelectedImage:@"nav_coin_icon_click" Target:self Action:@selector(settingClick)];
    //设置背景色
    self.view.backgroundColor = WBGlobalBg;
}
-(void)settingClick{
    WBLOGFUNC;
}
@end
