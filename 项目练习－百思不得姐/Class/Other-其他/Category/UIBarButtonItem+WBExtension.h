//
//  UIBarButtonItem+WBExtension.h
//  项目练习－百思不得姐
//
//  Created by wb on 16/6/18.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

/**
 * 自定义navigationItem的UIBarButtonItem
 */
#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WBExtension)
+ (instancetype)itemWithImage:(NSString *)image SelectedImage:(NSString *)selectedImage Target:(id)target Action:(SEL)action;
@end
