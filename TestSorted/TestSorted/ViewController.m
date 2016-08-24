//
//  ViewController.m
//  TestSorted
//
//  Created by zjb on 16/8/22.
//  Copyright © 2016年 zjb. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//简单数组排序，数组中只存数字
//    NSArray *sortArray = [[NSArray alloc] initWithObjects:@"1",@"3",@"4",@"7",@"8",@"2",@"6",@"5",@"13",@"15",@"12",@"20",@"28",@"11",nil];
//    NSSortDescriptor *des = [[NSSortDescriptor alloc]initWithKey:@"integerValue" ascending:YES];
//    
//    NSArray *desArray = [NSArray arrayWithObjects:des,nil];
//    
//    NSArray *sortedArray = [sortArray sortedArrayUsingDescriptors:desArray];
//    
//    NSLog(@"%@",sortedArray);
    
//数组排序，数组中存对象
    Person *p1 = [[Person alloc] initWithName:@"zhang" age:@"18"];
    
    Person *p2 = [[Person alloc] initWithName:@"wang" age:@"17"];
    
    Person *p3 = [[Person alloc] initWithName:@"li" age:@"8"];
    
    Person *p4 = [[Person alloc] initWithName:@"zhao" age:@"33"];
    
    Person *p5 = [[Person alloc] initWithName:@"chen" age:@"38"];
    
    NSMutableArray *persons = [[NSMutableArray alloc] initWithObjects:p1,p2,p3,p4,p5, nil];
    
    NSSortDescriptor *des = [[NSSortDescriptor alloc] initWithKey:@"age.integerValue" ascending:YES];
    
    NSArray *newArray = [persons sortedArrayUsingDescriptors:@[des]];

    [newArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Person *p = obj;
        NSLog(@"name:%@  age:%@",p.name,p.age);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
