//
//  MyViewController.m
//  NSTimerDemo
//
//  Created by liangzhen on 2017/3/19.
//  Copyright © 2017年 liangzhen. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property(nonatomic,strong)NSTimer *timer;

@property(nonatomic,strong)UIScrollView * myScrollView;

@property(nonatomic,strong)UILabel * label;

@property(nonatomic,assign)NSInteger times;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2-40, 120, 80, 30)];
    self.label.backgroundColor = [UIColor lightGrayColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    
    
    self.myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 200)];
    [self.view addSubview:self.myScrollView];
    self.myScrollView.backgroundColor = [UIColor grayColor];
    self.myScrollView.contentSize = CGSizeMake(0, 500);

    _times = 0;
    
    
    
    
    __weak typeof (self)ws = self;
        _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
            
//            [self avtion];

            [ws avtion];
        }];
    
    
//    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(avtion) userInfo:nil repeats:YES];
    
    
    
//    _timer = [[NSTimer alloc] initWithFireDate:[NSDate distantPast] interval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
////         NSLog(@"dddd");
//        [ws avtion];
//    }];
    
        /*
    
         FOUNDATION_EXPORT NSRunLoopMode const NSDefaultRunLoopMode;
         FOUNDATION_EXPORT NSRunLoopMode const NSRunLoopCommonModes
    
         */
    
        [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSDefaultRunLoopMode];
    
        [_timer fire];
    
    
    // Do any additional setup after loading the view.
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    if (self.timer.isValid) {
//        [self.timer invalidate];
//        self.timer = nil;
//    }
//
//
//}

- (void)avtion {
    _times++;
    self.label.text = [NSString stringWithFormat:@"%ld",(long)_times];
    [self.view layoutIfNeeded];
    
}

- (void)dealloc {
    NSLog(@"已经销毁");
    if (self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];

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
