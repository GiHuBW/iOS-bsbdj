//
//  WBFriendTrendsViewController.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBFriendTrendsViewController.h"
#import "WBRecommendViewController.h"

@interface WBFriendTrendsViewController ()

@end

@implementation WBFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"关注";
    //设置导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" SelectedImage:@"friendsRecommentIcon-click" Target:self Action:@selector(friendClick)];
    //设置背景色
    self.view.backgroundColor = WBGlobalBg;
}
-(void)friendClick{
    WBRecommendViewController *vc = [[WBRecommendViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
