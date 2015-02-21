//
//  CalendarUtil.m
//  puke
//
//  Created by woo akpaul on 14-10-24.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "CalendarUtil.h"

@implementation CalendarUtil

+(NSString *)thisYear{
    
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    
    return [NSString stringWithFormat:@"%i",dateComponents.year];
}
+(NSString *)thisMonth{
    
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    
    return [NSString stringWithFormat:@"%i",dateComponents.month];
    
}
+(NSString *)thisDay{
    
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    
    return [NSString stringWithFormat:@"%i",dateComponents.day];
}
+(NSString *)thisWeek{
    
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    [greCalendar setFirstWeekday:2];//设定周一为周首日
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    
    return [NSString stringWithFormat:@"%i",dateComponents.weekOfMonth];

}
+(NSInteger )dayNumInWeek:(NSDate *)date{
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSChineseCalendar];
//    [greCalendar setFirstWeekday:1];//设定周一为周首日
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:date];
    
    return dateComponents.weekday;
}
+(NSInteger )weekNumInThisMonth{
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSChineseCalendar];
        [greCalendar setFirstWeekday:2];//设定周一为周首日
    
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    
    return dateComponents.weekOfMonth;
}
-(void)test{
    
    //  先定义一个遵循某个历法的日历对象
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    [greCalendar setFirstWeekday:2];//设定周一为周首日
    //  通过已定义的日历对象，获取某个时间点的NSDateComponents表示，并设置需要表示哪些信息（NSYearCalendarUnit, NSMonthCalendarUnit, NSDayCalendarUnit等）
    NSDateComponents *dateComponents = [greCalendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekCalendarUnit | NSWeekdayCalendarUnit | NSWeekOfMonthCalendarUnit | NSWeekOfYearCalendarUnit fromDate:[NSDate date]];
    BTLog(@"year(年份): %i", dateComponents.year);
    BTLog(@"quarter(季度):%i", dateComponents.quarter);
    BTLog(@"month(月份):%i", dateComponents.month);
    BTLog(@"day(日期):%i", dateComponents.day);
    BTLog(@"hour(小时):%i", dateComponents.hour);
    BTLog(@"minute(分钟):%i", dateComponents.minute);
    BTLog(@"second(秒):%i", dateComponents.second);
    
    //  Sunday:1, Monday:2, Tuesday:3, Wednesday:4, Friday:5, Saturday:6
    BTLog(@"weekday(星期):%i", dateComponents.weekday);
    
    //  苹果官方不推荐使用week
    BTLog(@"week(该年第几周):%i", dateComponents.week);
    BTLog(@"weekOfYear(该年第几周):%i", dateComponents.weekOfYear);
    BTLog(@"weekOfMonth(该月第几周):%i", dateComponents.weekOfMonth);
}
@end
