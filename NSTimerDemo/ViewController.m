//
//  ViewController.m
//  NSTimerDemo
//
//  Created by liangzhen on 2017/3/19.
//  Copyright © 2017年 liangzhen. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    MyViewController * my = [[MyViewController alloc] init];
    
    [self presentViewController:my animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
