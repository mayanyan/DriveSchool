//
//  UIButton+Border.m
//  puke
//
//  Created by zxc on 14-8-15.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "UIButton+Border.h"

@implementation UIButton (Border)
-(void)setBorder:(UIColor *)color{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:13.0]; //设置矩圆角半径
    [self.layer setBorderWidth:0.8];   //边框宽度
    [self.layer setBorderColor:[color CGColor]];
}
@end
