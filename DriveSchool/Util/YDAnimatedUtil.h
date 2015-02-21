//
//  YDAnimatedUtil.h
//  puke
//
//  Created by woo akpaul on 14-10-22.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDAnimatedUtil : NSObject
//永久闪烁
+(CABasicAnimation *)opacityForever_Animation:(float)time;
//有闪烁次数
+(CABasicAnimation *)opacityTimes_Animation:(float)repeatTimes durTimes:(float)time;
//横向移动
+(CABasicAnimation *)moveX:(float)time X:(NSNumber *)x;
//纵向移动
+(CABasicAnimation *)moveY:(float)time Y:(NSNumber *)y;
//缩放
+(CABasicAnimation *)scale:(NSNumber *)Multiple orgin:(NSNumber *)orginMultiple durTimes:(float)time Rep:(float)repeatTimes;
//组合动画
+(CAAnimationGroup *)groupAnimation:(NSArray *)animationAry durTimes:(float)time Rep:(float)repeatTimes;
//路径动画
+(CAKeyframeAnimation *)keyframeAniamtion:(CGMutablePathRef)path durTimes:(float)time Rep:(float)repeatTimes;
//点移动
+(CABasicAnimation *)movepoint:(CGPoint )point;
//旋转
+(CABasicAnimation *)rotation:(float)dur degree:(float)degree direction:(int)direction repeatCount:(int)repeatCount;
//抖动
+(void)AddWiggleAnimation:(UIView *)view;
//淡出
+(void)hiddenArrow:(UIView *)view;
//淡入
+(void)showArrow:(UIView *)view;
@end
