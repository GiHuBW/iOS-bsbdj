//
//  WBEssenceViewController.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBEssenceViewController.h"
#import "WBTestViewController.h"

@interface WBEssenceViewController ()

@end

@implementation WBEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" SelectedImage:@"MainTagSubIconClick" Target:self Action:@selector(tagClick) ];
    //设置背景色
    self.view.backgroundColor = WBGlobalBg;
    
}
-(void)tagClick{
    WBLOG(@"你来了");
    WBLOGFUNC;
    
    WBTestViewController *test = [[WBTestViewController alloc]init];
    [self.navigationController pushViewController:test animated:YES];
}

@end
