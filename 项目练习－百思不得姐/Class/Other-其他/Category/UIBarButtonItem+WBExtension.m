//
//  UIBarButtonItem+WBExtension.m
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "UIBarButtonItem+WBExtension.h"

@implementation UIBarButtonItem (WBExtension)

+ (instancetype)itemWithImage:(NSString *)image SelectedImage:(NSString *)selectedImage Target:(id)target Action:(SEL)action{
    UIButton *buton = [UIButton buttonWithType:UIButtonTypeCustom];
    [buton setImage:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [buton setImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
    buton.size = buton.currentImage.size;
    //让按钮内容左移10
    buton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [buton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:buton];
}

@end
