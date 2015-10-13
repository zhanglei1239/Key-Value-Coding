//
//  ViewController.m
//  Key-Value-CodingDemo
//
//  Created by zhanglei on 15/10/13.
//  Copyright © 2015年 lei.zhang. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "Course.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Student * student = [[Student alloc] init];
    [student setValue:@"张三" forKey:@"name"];
    NSString * name = [student valueForKey:@"name"];
    NSLog(@"学生姓名:%@",name);
    
    Course * course = [[Course alloc] init];
    [course setValue:@"语文" forKey:@"courseName"];
    [student setValue:course forKey:@"course"];
    NSString * courseName = [student valueForKeyPath:@"course.courseName"];
    NSLog(@"课程1:%@",courseName);
    
    [student setValue:@"数学课" forKeyPath:@"course.courseName"];
    courseName = [student valueForKeyPath:@"course.courseName"];
    NSLog(@"课程2:%@",courseName);
    
    [student setValue:@"88" forKey:@"point"];
    NSString * point = [student valueForKey:@"point"];
    NSLog(@"分数:%@",point);
    
    Student * student1 = [[Student alloc] init];
    Student * student2 = [[Student alloc] init];
    Student * student3 = [[Student alloc] init];
    
    [student1 setValue:@"78" forKey:@"point"];
    [student2 setValue:@"98" forKey:@"point"];
    [student3 setValue:@"60" forKey:@"point"];
    
    NSArray * array = [NSArray arrayWithObjects:student1,student2,student3,nil];
    [student setValue:array forKey:@"otherStudent"];
    NSLog(@"其他学生的成绩%@",[student valueForKeyPath:@"otherStudent.point"]);
    NSLog(@"共%@个学生",[student valueForKeyPath:@"otherStudent.@count"]);
    NSLog(@"最高成绩:%@",[student valueForKeyPath:@"otherStudent.@max.point"]);
    NSLog(@"最低成绩:%@",[student valueForKeyPath:@"otherStudent.@min.point"]);
    NSLog(@"平均成绩:%@",[student valueForKeyPath:@"otherStudent.@avg.point"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
