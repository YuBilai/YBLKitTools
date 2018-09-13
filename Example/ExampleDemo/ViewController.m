//
//  ViewController.m
//  链式编程
//
//  Created by 康美通 on 2018/9/13.
//  Copyright © 2018年 康美通. All rights reserved.
//

#import "ViewController.h"
#import "YBLLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YBLLabel *label = [YBLLabel new].frameSet(CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width - 20, 100)).textSet(@"我是链式编程").textColorSet([UIColor greenColor]).backgroundColorSet([UIColor purpleColor]);
    [self.view addSubview:label];
    
    YBLLabel *secondLabel = [[YBLLabel alloc]initWithSetBlock:^(YBLLabel *ybl_label) {
        ybl_label.textColorSet(UIColor.blueColor).frameSet(CGRectMake(10, label.frame.origin.y + label.bounds.size.height + 10, label.bounds.size.width, label.bounds.size.height)).backgroundColorSet(UIColor.greenColor).textSet(@"我是第二个链式");
    }];
    [self.view addSubview:secondLabel];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
