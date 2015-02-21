//
//  StrUtil.m
//  JuGeiLi
//
//  Created by kimziv on 14-1-27.
//  Copyright (c) 2014年 bitbao.com All rights reserved.
//

#import "StrUtil.h"

@implementation StrUtil
+ (NSString *)longlong2Str:(long long)atime format:(NSString *)format
{
    NSDate *date_l = [NSDate dateWithTimeIntervalSince1970:atime / 1000.0];
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc] init];
    //    [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssZ"];
    //    [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd' 'HH':'mm':'ss"];
    //     [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd' 'HH':'mm"];
    //[dataFormatter setDateFormat:@"yy'-'MM'-'dd' 'HH':'mm"];
    [dataFormatter setDateFormat:format];
    [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    NSString *str_l = [dataFormatter stringFromDate:date_l];
    
    //    if([StrUtils isToday:atime]){
    //        //        [dataFormatter setDateFormat:@"HH':'mm':'ss"];
    //        [dataFormatter setDateFormat:@"HH':'mm"];
    //        [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    //        NSString *str = [dataFormatter stringFromDate:date_l];
    //
    //        return [NSString stringWithFormat:@"今天 %@", str];
    //    }else if([StrUtils isYesday:atime]){
    //        [dataFormatter setDateFormat:@"HH':'mm"];
    //        [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    //        NSString *str = [dataFormatter stringFromDate:date_l];
    //
    //        return [NSString stringWithFormat:@"昨天 %@", str];
    //    }
    return str_l;
}

+ (NSString *)longlong2Str:(long long)atime
{
    NSDate *date_l = [NSDate dateWithTimeIntervalSince1970:atime / 1000.0];
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc] init];
    //    [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssZ"];
    //    [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd' 'HH':'mm':'ss"];
    //     [dataFormatter setDateFormat:@"yyyy'-'MM'-'dd' 'HH':'mm"];
    [dataFormatter setDateFormat:@"yy'-'MM'-'dd' 'HH':'mm"];
    [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    NSString *str_l = [dataFormatter stringFromDate:date_l];
    
//    if([StrUtils isToday:atime]){
//        //        [dataFormatter setDateFormat:@"HH':'mm':'ss"];
//        [dataFormatter setDateFormat:@"HH':'mm"];
//        [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
//        NSString *str = [dataFormatter stringFromDate:date_l];
//        
//        return [NSString stringWithFormat:@"今天 %@", str];
//    }else if([StrUtils isYesday:atime]){
//        [dataFormatter setDateFormat:@"HH':'mm"];
//        [dataFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
//        NSString *str = [dataFormatter stringFromDate:date_l];
//        
//        return [NSString stringWithFormat:@"昨天 %@", str];
//    }
    return str_l;
}

+ (NSString *)intFormatColonTime:(int)int_duration{
    
    int hour =(int)int_duration/3600;
    int_duration=int_duration-3600*hour;//除去整小时数后剩下的时间
    int minute =(int)int_duration/60;
    int seconds=int_duration-60*minute;//除去整分钟数后剩下的时间
    NSString *str_hour=@"";
    NSString *str_minute=@"";
    NSString *str_seconds=@"";
    
    if (hour<10) {
        str_hour =[NSString stringWithFormat:@"0%i",hour];
    }else{
        str_hour=[NSString stringWithFormat:@"%i",hour];
    }
    
    if (minute<10) {
        str_minute =[NSString stringWithFormat:@"0%i",minute];
    }else{
        str_minute=[NSString stringWithFormat:@"%i",minute];
    }
    
    
    if (seconds<10) {
        str_seconds =[NSString stringWithFormat:@"0%i",seconds];
    }else{
        str_seconds=[NSString stringWithFormat:@"%i",seconds];
    }
    return [NSString stringWithFormat:@"%@:%@:%@",str_hour,str_minute,str_seconds];
}
+ (NSString *)intFormatShifenmiaoTime:(int)int_duration{
    
    int hour =(int)int_duration/3600;
    int_duration=int_duration-3600*hour;//除去整小时数后剩下的时间
    int minute =(int)int_duration/60;
    int seconds=int_duration-60*minute;//除去整分钟数后剩下的时间
    NSString *str_hour=@"";
    NSString *str_minute=@"";
    NSString *str_seconds=@"";
    
    if (hour<10) {
        str_hour =[NSString stringWithFormat:@"0%i",hour];
    }else{
        str_hour=[NSString stringWithFormat:@"%i",hour];
    }
    
    if (minute<10) {
        str_minute =[NSString stringWithFormat:@"0%i",minute];
    }else{
        str_minute=[NSString stringWithFormat:@"%i",minute];
    }
    
    
    if (seconds<10) {
        str_seconds =[NSString stringWithFormat:@"0%i",seconds];
    }else{
        str_seconds=[NSString stringWithFormat:@"%i",seconds];
    }
    return [NSString stringWithFormat:@"%@时%@分%@秒",str_hour,str_minute,str_seconds];
}

+ (NSString *)intFormatShifenmiaoTime_ForSelfNoTouch:(int)int_duration{
    
    int hour =(int)int_duration/3600;
    int_duration=int_duration-3600*hour;//除去整小时数后剩下的时间
    int minute =(int)int_duration/60;
    int seconds=int_duration-60*minute;//除去整分钟数后剩下的时间
    NSString *str_hour=@"";
    NSString *str_minute=@"";
    NSString *str_seconds=@"";
    
   
    str_hour=[NSString stringWithFormat:@"%i",hour];
   
    str_minute=[NSString stringWithFormat:@"%i",minute];
    
    str_seconds=[NSString stringWithFormat:@"%i",seconds];
    if (hour>0) {
        
        if (seconds==0&&minute==0) {
              return [NSString stringWithFormat:@"%@时",str_hour];
        }else  if (seconds==0) {
        
            return [NSString stringWithFormat:@"%@时%@分",str_hour,str_minute];
        }else{
              return [NSString stringWithFormat:@"%@时%@分%@秒",str_hour,str_minute,str_seconds];
        }

        
      
    }else if (hour==0&&minute>0){
       
        if (seconds==0) {
            return [NSString stringWithFormat:@"%@分",str_minute];
        }else{
            return [NSString stringWithFormat:@"%@分%@秒",str_minute,str_seconds];
        }
     

    }else{
        return [NSString stringWithFormat:@"%@秒",str_seconds];

    }
    
   
}
@end
