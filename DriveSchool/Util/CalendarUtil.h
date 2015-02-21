//
//  CalendarUtil.h
//  puke
//
//  Created by woo akpaul on 14-10-24.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalendarUtil : NSObject
+(NSString *)thisYear;
+(NSString *)thisMonth;
+(NSString *)thisDay;
+(NSString *)thisWeek;
+(NSInteger)dayNumInWeek:(NSDate *)date;
+(NSInteger )weekNumInThisMonth;
@end
