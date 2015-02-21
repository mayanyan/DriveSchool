//
//  StrUtil.h
//  JuGeiLi
//
//  Created by kimziv on 14-1-27.
//  Copyright (c) 2014年 bitbao.com All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StrUtil : NSObject
+ (NSString *)longlong2Str:(long long)atime format:(NSString *)format;
+ (NSString *)longlong2Str:(long long)atime;
+ (NSString *)intFormatColonTime:(int)int_duration;
+ (NSString *)intFormatShifenmiaoTime:(int)int_duration;
+ (NSString *)intFormatShifenmiaoTime_ForSelfNoTouch:(int)int_duration;
@end
