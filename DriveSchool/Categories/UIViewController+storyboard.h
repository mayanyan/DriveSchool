//
//  UIViewController+storyboard.h
//  puke
//
//  Created by Bitbao on 14-7-17.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (storyboard)

/**
 根据identifier从mainStoryBoard中获取viewController对象
 */
-(UIViewController * )getViewControllerFromStoryBoard:(NSString *) identifier;

/**
 直接进入主页面
 */
-(void)go_main_page;

/**
 设置是否禁止左侧left的拖动效果
 */
-(void)disableLeftPan:(BOOL)value;

@end
