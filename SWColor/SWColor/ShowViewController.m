//
//  ShowViewController.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "ShowViewController.h"
#import "ColorView.h"

@interface ShowViewController ()

@end

@implementation ShowViewController

- (BOOL)prefersStatusBarHidden {
    return true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor blackColor];
    for (int i = 0; i < self.dataArray.count; i++) {
        ColorView *view = [ColorView colorView];
        if (self.isHex) {
            view.hex = self.dataArray[i];
        } else {
            view.model = self.dataArray[i];
        }
        view.frame = CGRectMake(i * [UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        [scrollView addSubview:view];
    }
    scrollView.pagingEnabled = true;
    scrollView.bounces = false;
    scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * self.dataArray.count, 0);
    if (self.index) {
        [scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width * self.index, 0)];
    }
    [self.view addSubview:scrollView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Close" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 80 - 25, [UIScreen mainScreen].bounds.size.height - 25 - 45, 80 , 45);
    button.layer.cornerRadius = 8.f;
    button.layer.masksToBounds = true;
    [button addTarget:self action:@selector(Close:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)Close:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
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
