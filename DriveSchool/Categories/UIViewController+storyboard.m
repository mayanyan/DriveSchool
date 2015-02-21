//
//  UIViewController+storyboard.m
//  puke
//
//  Created by Bitbao on 14-7-17.
//  Copyright (c) 2014年 Bitbao. All rights reserved.
//

#import "UIViewController+storyboard.h"


@implementation UIViewController (storyboard)


-(UIViewController * )getViewControllerFromStoryBoard:(NSString *) identifier{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:identifier];
}




@end
