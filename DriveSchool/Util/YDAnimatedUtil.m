//
//  YDAnimatedUtil.m
//  puke
//
//  Created by woo akpaul on 14-10-22.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "YDAnimatedUtil.h"

@implementation YDAnimatedUtil

//永久闪烁的动画
+(CABasicAnimation *)opacityForever_Animation:(float)time
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue=[NSNumber numberWithFloat:1.0];
    animation.toValue=[NSNumber numberWithFloat:0.0];
    animation.autoreverses=YES;
    animation.duration=time;
    animation.repeatCount=FLT_MAX;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//有闪烁次数的动画
+(CABasicAnimation *)opacityTimes_Animation:(float)repeatTimes durTimes:(float)time
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue=[NSNumber numberWithFloat:1.0];
    animation.toValue=[NSNumber numberWithFloat:0.4];
    animation.repeatCount=repeatTimes;
    animation.duration=time;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    animation.autoreverses=YES;
    return  animation;
}
//横向移动
+(CABasicAnimation *)moveX:(float)time X:(NSNumber *)x
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    animation.toValue=x;
    animation.duration=time;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//纵向移动
+(CABasicAnimation *)moveY:(float)time Y:(NSNumber *)y
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.translation.y"];
    animation.fromValue=y;
    animation.duration=time;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//缩放
+(CABasicAnimation *)scale:(NSNumber *)Multiple orgin:(NSNumber *)orginMultiple durTimes:(float)time Rep:(float)repeatTimes
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue=orginMultiple;
    animation.toValue=Multiple;
    animation.duration=time;
    animation.autoreverses=YES;
    animation.repeatCount=repeatTimes;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//组合动画
+(CAAnimationGroup *)groupAnimation:(NSArray *)animationAry durTimes:(float)time Rep:(float)repeatTimes
{
    CAAnimationGroup *animation=[CAAnimationGroup animation];
    animation.animations=animationAry;
    animation.duration=time;
    animation.repeatCount=repeatTimes;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//路径动画
+(CAKeyframeAnimation *)keyframeAniamtion:(CGMutablePathRef)path durTimes:(float)time Rep:(float)repeatTimes
{
    CAKeyframeAnimation *animation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path=path;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    animation.autoreverses=NO;
    animation.duration=time;
    animation.repeatCount=repeatTimes;
    return animation;
}
//点移动
+(CABasicAnimation *)movepoint:(CGPoint )point
{
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.translation"];
    animation.toValue=[NSValue valueWithCGPoint:point];
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    return animation;
}
//旋转
+(CABasicAnimation *)rotation:(float)dur degree:(float)degree direction:(int)direction repeatCount:(int)repeatCount
{
    CATransform3D rotationTransform  = CATransform3DMakeRotation(degree, 0, 0,direction);
    CABasicAnimation* animation;
    animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    
    animation.toValue= [NSValue valueWithCATransform3D:rotationTransform];
    animation.duration= dur;
    animation.autoreverses= NO;
    animation.cumulative= YES;
    animation.removedOnCompletion=NO;
    animation.fillMode=kCAFillModeForwards;
    animation.repeatCount= repeatCount;
    animation.delegate= self;
    
    return animation;
}
//先放大再缩小
+(void)test{
    
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"transform.translation.y"];  animation.duration=4.0f;
    animation.autoreverses=NO;
    animation.repeatCount=1;
    animation.toValue=[NSNumber numberWithInt:-10];
    animation.fromValue=[NSNumber numberWithInt:200];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    CABasicAnimation *animationZoomIn=[CABasicAnimation animationWithKeyPath:@"transform.scale"];  animationZoomIn.duration=2.0f;
    animationZoomIn.autoreverses=NO;
    animationZoomIn.repeatCount=1;
    animationZoomIn.toValue=[NSNumber numberWithFloat:1.56];
    animationZoomIn.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    CABasicAnimation *animationZoomOut=[CABasicAnimation animationWithKeyPath:@"transform.scale"];  animationZoomOut.beginTime=2.0f;
    animationZoomOut.duration=2.0f;
    animationZoomOut.autoreverses=NO;
    animationZoomOut.repeatCount=1;
    animationZoomOut.toValue=[NSNumber numberWithFloat:.01];
    animationZoomOut.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    CAAnimationGroup *group=[CAAnimationGroup animation];
    group.duration=4.0f;
    group.animations=[NSArray arrayWithObjects: animation, animationZoomIn, animationZoomOut,nil];  group.removedOnCompletion=NO;
    group.fillMode=kCAFillModeForwards;
    // [layer addAnimation:group forKey:nil];
}
+(void)AddWiggleAnimation:(UIView *)view{
    CALayer* viewLayer=[view layer];
    CABasicAnimation*animation=[CABasicAnimation animationWithKeyPath:@"transform"];
    animation.duration=0.1;
    animation.repeatCount = 100000;
    animation.autoreverses=YES;
    animation.fromValue=[NSValue valueWithCATransform3D:CATransform3DRotate
                         
                         (viewLayer.transform, -0.1, 0.0, 0.0, 0.1)];
    animation.toValue=[NSValue valueWithCATransform3D:CATransform3DRotate
                       
                       (viewLayer.transform, 0.1, 0.0, 0.0, 0.1)];
    [viewLayer addAnimation:animation forKey:@"wiggle"];
}
+(void)hiddenArrow:(UIView *)view{
    [UIView beginAnimations:@"ShowArrow" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    // Make the animatable changes.
    view.alpha = 0.0;
    // Commit the changes and perform the animation.
    [UIView commitAnimations];
    
}
+(void)showArrow:(UIView *)view{
    [UIView beginAnimations:@"ShowArrow" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    // Make the animatable changes.
    view.alpha = 1.0;
    // Commit the changes and perform the animation.
    [UIView commitAnimations];
    
}
@end
