//
//  ViewController.m
//  DropDownListDemo
//
//  Created by Box on 15/8/25.
//  Copyright (c) 2015年 Box. All rights reserved.
//

#import "ViewController.h"


//step 1
#import "BoxDropDownList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)dealloc {
    
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.view.backgroundColor = [UIColor greenColor];
    
    
    NSArray * listArray = @[@"1",@"2",@"3",@"4",@"5"];
    
    
    //step 2
    BoxDropDownList *dropDownList = [[BoxDropDownList alloc]initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, 41) withListArr:listArray withBlock:^(id sender) {
        //sender 是一个 NSString 类型的
        
        NSString *retString = (NSString *)sender;
        
        NSLog(@"sender  is  %@",retString);
        
        
    }];
    
    dropDownList.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:dropDownList];
    
    [dropDownList release];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
