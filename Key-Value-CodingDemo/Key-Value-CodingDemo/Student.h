//
//  Student.h
//  Key-Value-CodingDemo
//
//  Created by zhanglei on 15/10/13.
//  Copyright © 2015年 lei.zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"
@interface Student : NSObject
{
    NSString * name;
    Course * course;
    NSInteger point;
    NSArray * otherStudent;
}
@end
