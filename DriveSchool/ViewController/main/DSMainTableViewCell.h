//
//  DSMainTableViewCell.h
//  DriveSchool
//
//  Created by 张学成 on 15/2/8.
//  Copyright (c) 2015年 张学成. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSMainTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *content;

@end
