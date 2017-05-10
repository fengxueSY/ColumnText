//
//  ViewController.m
//  ColumnText
//
//  Created by 666gps on 2017/5/2.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "ViewController.h"
#import "ColumnView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"];
    
    ColumnView * columnView = [[ColumnView alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 300) ShowDataArray:array];
    [self.view addSubview:columnView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
