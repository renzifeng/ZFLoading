//
//  ViewController.m
//  ZFLoading
//
//  Created by 任子丰 on 15/11/24.
//  Copyright © 2015年 任子丰. All rights reserved.
//

#import "ViewController.h"
#import "ZFLoadingView.h"
#import "SecondViewController.h"
#define ScreenWidth                         [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@property (nonatomic, strong) ZFLoadingView *loadingView;

@end

@implementation ViewController

#pragma mark - lifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(ScreenWidth/2-100, 100, 200, 50);
    button.backgroundColor =[UIColor redColor];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:button];
    
    
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.loadingView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //3秒加载完毕，动画写在viewDidAppear
    [self.loadingView setStarsByStars:@(1.0)];
    [UIView animateWithDuration:3 animations:^{
        [self.loadingView setStarsByStars:@(0)];
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark - Action

-(void)click
{
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self presentViewController:secondVC animated:YES completion:nil];
}

#pragma mark - Getter

- (ZFLoadingView *)loadingView
{
    if (_loadingView== nil) {
        _loadingView = [[ZFLoadingView alloc]initWithFrame:CGRectMake(0, 200, ScreenWidth, 300)];
    }
    return _loadingView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
