//
//  YDDateUtil.m
//  puke
//
//  Created by woo akpaul on 14-10-28.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "YDDateUtil.h"

@implementation YDDateUtil
+(NSDate *)beforeDate:(NSDate *)currDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    NSTimeInterval  interval =24*60*60*1; //1:天数
    NSDate *tmpDate = [currDate dateByAddingTimeInterval:-interval];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];

    return tmpDate;
}
+(NSDate *)afterDate:(NSDate *)currDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    NSTimeInterval  interval =24*60*60*1; //1:天数
    NSDate *tmpDate = [currDate dateByAddingTimeInterval:+interval];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    return tmpDate;

}
+(NSDate *)strToDate:(NSString *)strDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    return [dateFormatter dateFromString:strDate];
}
+(NSString *)getYearFromDate:(NSDate *)currDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy"];
    
    return [dateFormatter stringFromDate:currDate];
}
+(NSString *)getMonthFromDate:(NSDate *)currDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM"];
    
    return [dateFormatter stringFromDate:currDate];
}
+(NSString *)getDayFromDate:(NSDate *)currDate{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd"];
    
    return [dateFormatter stringFromDate:currDate];
}
@end
