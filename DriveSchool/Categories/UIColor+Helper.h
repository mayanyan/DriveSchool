//
//  UIColor+Helper.h
//  JuGeiLi
//
//  Created by kimziv on 13-11-1.
//  Copyright (c) 2013年 kimziv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Helper)
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue;
- (NSString*) hexFromUIColor;
@end
