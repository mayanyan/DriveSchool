//
//  YDDateUtil.h
//  puke
//
//  Created by woo akpaul on 14-10-28.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDDateUtil : NSObject
+(NSDate *)beforeDate:(NSDate *)currDate;
+(NSDate *)afterDate:(NSDate *)currDate;
+(NSDate *)strToDate:(NSString *)strDate;
+(NSString *)getYearFromDate:(NSDate *)currDate;
+(NSString *)getMonthFromDate:(NSDate *)currDate;
+(NSString *)getDayFromDate:(NSDate *)currDate;
@end
