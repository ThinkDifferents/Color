//
//  BaseViewController.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "BaseViewController.h"
#import "MainViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "Main2ViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (BOOL)prefersStatusBarHidden {
    return true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = true;
}

- (IBAction)list1Click:(id)sender {
    [self.navigationController pushViewController:[MainViewController new] animated:true];
}

- (IBAction)list2Click:(id)sender {
    [self.navigationController pushViewController:[Main2ViewController new] animated:true];
    
}

@end
