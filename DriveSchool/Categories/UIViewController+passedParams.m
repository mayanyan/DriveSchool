//
//  UIViewController+passedParams.m
//  puke
//
//  Created by Bitbao on 14-7-17.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "UIViewController+passedParams.h"
#import <objc/runtime.h>

static NSString * passedParamsKey = @"passedParamsKey";

@implementation UIViewController (passedParams)

-(NSMutableDictionary *)passedParams{
    NSMutableDictionary * ret =  objc_getAssociatedObject(self, &passedParamsKey);
    if (ret == nil) {
        ret = [[NSMutableDictionary alloc]init];
        [self setPassedParams:ret];
    }
    return ret;
}

-(void)setPassedParams:(NSMutableDictionary *)newValue{
    objc_setAssociatedObject(self, &passedParamsKey, newValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
