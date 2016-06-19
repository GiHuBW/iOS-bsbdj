//
//  UIView+WBExtension.h
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

/**
 * 扩展UIView的属性，以方便设置UIView尺寸
 */
#import <UIKit/UIKit.h>

@interface UIView (WBExtension)
@property (nonatomic , assign) CGSize size;
@property (nonatomic , assign) CGFloat width;
@property (nonatomic , assign) CGFloat height;
@property (nonatomic , assign) CGFloat x;
@property (nonatomic , assign) CGFloat y;

//- (CGFloat)x;
//- (void)setX:(CGFloat)x;
/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/
@end
