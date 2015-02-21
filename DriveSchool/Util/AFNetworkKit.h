//
//  AFNetworkKit.h
//  puke
//
//  Created by woo akpaul on 14-6-9.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface AFNetworkKit : AFHTTPSessionManager
+ (instancetype)sharedClient;
+ (instancetype)sharedClient_two;
+ (instancetype)sharedClient_wx;
+ (NSString *) getMessageWithResponse:(NSURLResponse *)response Error:(NSError * )error;
- (void)test;
@end
