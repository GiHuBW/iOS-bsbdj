//
//  WBTabBar.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBTabBar.h"

@interface WBTabBar ()
@property (nonatomic , strong)UIButton *publishButton;
@end

@implementation WBTabBar
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        //设置发布按钮
        self.publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.publishButton setImage:[[UIImage imageNamed:@"tabBar_publish_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]forState:UIControlStateNormal];
        [self.publishButton setImage:[[UIImage imageNamed:@"tabBar_publish_click_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
        self.publishButton.size = self.publishButton.currentImage.size;
        [self addSubview:self.publishButton];
    }
    return self;
}


-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat width = self.width;
    CGFloat height = self.height;
    //设置发布按钮的位置
    self.publishButton.center = CGPointMake(width*0.5, height*0.5);
    //设置其他UITabBarButton的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width/5;
    CGFloat buttonH = height;
    NSUInteger index = 0;
    //将TabBar上的TabBarButton重新布局
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]]||button == self.publishButton)
            continue;
            CGFloat buttonX = buttonW * (index > 1?(index + 1):index);
            button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index ++;
    }
    
}
@end
