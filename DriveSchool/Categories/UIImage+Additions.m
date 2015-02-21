//
//  UIImage+Additions.m
//  JuGeiLi
//
//  Created by kimziv on 13-11-1.
//  Copyright (c) 2013年 kimziv. All rights reserved.
//

#import "UIImage+Additions.h"
#import "UIColor+Helper.h"
@implementation UIImage (Additions)
+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
+ (UIImage *)imageWithColor:(UIColor *)color view:(UIView *)view
{
    CGRect rect = CGRectMake(0.0f, 0.0f, view.frame.size.width, view.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


+ (UIImage *)imageWithHexColor:(NSInteger)hexValue
{
   return [self imageWithColor:[UIColor colorWithHex:hexValue]];
}

+ (UIImage *)separatorWithHexColor:(NSInteger)hexValue1  andHexColor:(NSInteger)hexValue2;
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 2.0f);
    CGRect rect1 = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    CGRect rect2 = CGRectMake(0.0f, 1.0f, 1.0f, 1.0f);
    UIColor *color1=[UIColor colorWithHex:hexValue1];
    UIColor *color2=[UIColor colorWithHex:hexValue2];
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color1 CGColor]);
    CGContextFillRect(context, rect1);
    CGContextSetFillColorWithColor(context, [color2 CGColor]);
    CGContextFillRect(context, rect2);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage *)separatorInPostStep1
{
    return [self separatorWithHexColor:0xCCCCCC andHexColor:0xFFFFFF];
}

@end
