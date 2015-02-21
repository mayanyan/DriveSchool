//
//  DSTeacherDateViewController.m
//  DriveSchool
//
//  Created by 张学成 on 15/2/20.
//  Copyright (c) 2015年 张学成. All rights reserved.
//

#import "DSTeacherDateViewController.h"

@interface DSTeacherDateViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *teacherPhoto;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *teachAge;
@property (weak, nonatomic) IBOutlet UILabel *studentNum;
@property (strong, nonatomic) NSDictionary *teacherInfo;

@end

@implementation DSTeacherDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setDefaultValue];
}
-(void)setDefaultValue{
    
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
    
    _teacherInfo = [self.passedParams nonNullValueForKey:@"teacherInfo"];
    
    [_teacherPhoto setImage:[UIImage imageNamed:[_teacherInfo nonNullValueForKey:@"photo"]]];
    _teachAge.text = [[NSString alloc]initWithFormat:@"%li年",(long)[[_teacherInfo nonNullValueForKey:@"teachAge"]integerValue]];
    _studentNum.text = [[NSString alloc]initWithFormat:@"%li人",(long)[[_teacherInfo nonNullValueForKey:@"studentNum"]integerValue]];
    
}

#pragma tableDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
