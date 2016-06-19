//
//  WBTabBarController.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBTabBarController.h"
#import "WBEssenceViewController.h"
#import "WBNewViewController.h"
#import "WBFriendTrendsViewController.h"
#import "WBMyViewController.h"
#import "WBNavigationController.h"
#import "WBTabBar.h"

@interface WBTabBarController ()

@end

@implementation WBTabBarController
+(void)initialize{
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                       NSFontAttributeName :[UIFont systemFontOfSize:12.0],
                                                       NSForegroundColorAttributeName:[UIColor darkGrayColor]
                                                       }forState:UIControlStateSelected];
    [[UITabBarItem appearance]setTitleTextAttributes:@{
                                                      NSFontAttributeName:[UIFont systemFontOfSize:12.0],
                                                      NSForegroundColorAttributeName:[UIColor lightGrayColor]
                                                      }forState:UIControlStateNormal];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //添加子控制器
    [self setupChildVC:[[WBEssenceViewController alloc]init] Title:@"精华" Image:@"tabBar_essence_icon" SelectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[WBNewViewController alloc]init] Title:@"新帖" Image:@"tabBar_new_icon" SelectedImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[[WBFriendTrendsViewController alloc]init] Title:@"关注" Image:@"tabBar_friendTrends_icon" SelectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[WBMyViewController alloc]init] Title:@"我的" Image:@"tabBar_me_icon" SelectedImage:@"tabBar_me_click_icon"];
    //self.tabBar为只读属性不能直接更改，可用KVC进行更改
    //self.tabBar = [[WBTabBar alloc]init];
    [self setValue:[[WBTabBar alloc]init] forKey:@"tabBar"];
   
}

/**
 初始化控制器
 */
-(void)setupChildVC:(UIViewController *)vc Title:(NSString *) title Image:(NSString *)image SelectedImage:(NSString *)selectedImage{
    //设置图片和文字
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //包装一个导航控制器，添加导航控制器为tabbarController的子控制起
    WBNavigationController *nav = [[WBNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
    
}

@end
