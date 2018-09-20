//
//  MainViewController.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "MainViewController.h"
#import "ShowViewController.h"
#import "ColorView.h"
#import "ColorCell.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation MainViewController

- (BOOL)prefersStatusBarHidden {
    return true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = true;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 8, 0);
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ColorCell *cell = [ColorCell cellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowViewController *vc = [ShowViewController new];
    vc.index = indexPath.row;
    vc.dataArray = self.dataArray;
    [self presentViewController:vc animated:true completion:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 75;
}

/*
 
 ColorModel *m<##> = [ColorModel new];
 m<##>.hexColor = @"<#E0E0E0#>";
 m<##>.rgbColor = @"R  <##>  G  <##>  B  <##>";
 [_dataArray addObject:m<##>];
 
 */

- (NSMutableArray *)dataArray
{
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
        
        ColorModel *m31 = [ColorModel new];
        m31.hexColor = @"59E3E2";
        m31.rgbColor = @"R  89  G  227  B  226";
        [_dataArray addObject:m31];
        
        ColorModel *m30 = [ColorModel new];
        m30.hexColor = @"D9C295";
        m30.rgbColor = @"R  217  G  194  B  149";
        [_dataArray addObject:m30];
        
        ColorModel *m29 = [ColorModel new];
        m29.hexColor = @"3AC7C5";
        m29.rgbColor = @"R  58  G  199  B  197";
        [_dataArray addObject:m29];
        
        ColorModel *m28 = [ColorModel new];
        m28.hexColor = @"52E9FF";
        m28.rgbColor = @"R  82  G  233  B  255";
        [_dataArray addObject:m28];
        
        ColorModel *m27 = [ColorModel new];
        m27.hexColor = @"5392FF";
        m27.rgbColor = @"R  83  G  146  B  255";
        [_dataArray addObject:m27];
        
        ColorModel *m26 = [ColorModel new];
        m26.hexColor = @"FFAC68";
        m26.rgbColor = @"R  255  G  172  B  104";
        [_dataArray addObject:m26];
        
        ColorModel *m25 = [ColorModel new];
        m25.hexColor = @"FFD94F";
        m25.rgbColor = @"R  255  G  217  B  79";
        [_dataArray addObject:m25];
        
        ColorModel *m24 = [ColorModel new];
        m24.hexColor = @"FF8D42";
        m24.rgbColor = @"R  255  G  141  B  66";
        [_dataArray addObject:m24];
        
        ColorModel *m23 = [ColorModel new];
        m23.hexColor = @"FF599E";
        m23.rgbColor = @"R  255  G  89  B  158";
        [_dataArray addObject:m23];
        
        ColorModel *m22 = [ColorModel new];
        m22.hexColor = @"FF68F8";
        m22.rgbColor = @"R  255  G  104  B  248";
        [_dataArray addObject:m22];
        
        ColorModel *m21 = [ColorModel new];
        m21.hexColor = @"5983FF";
        m21.rgbColor = @"R  89  G  131  B  255";
        [_dataArray addObject:m21];
        
        ColorModel *m20 = [ColorModel new];
        m20.hexColor = @"FF625A";
        m20.rgbColor = @"R  255  G  98  B  90";
        [_dataArray addObject:m20];
        
        ColorModel *m19 = [ColorModel new];
        m19.hexColor = @"F5F6F7";
        m19.rgbColor = @"R  245  G  246  B  247";
        [_dataArray addObject:m19];
        
        ColorModel *m17 = [ColorModel new];
        m17.hexColor = @"FFD100";
        m17.rgbColor = @"R  255  G  209  B  0";
        [_dataArray addObject:m17];
        
        ColorModel *m15 = [ColorModel new];
        m15.hexColor = @"FFC1C1";
        m15.rgbColor = @"R  255  G  193  B  193";
        [_dataArray addObject:m15];
        
        ColorModel *m14 = [ColorModel new];
        m14.hexColor = @"FF8A60";
        m14.rgbColor = @"R  255  G  138  B  96";
        [_dataArray addObject:m14];
        
        ColorModel *m13 = [ColorModel new];
        m13.hexColor = @"FF4E4E";
        m13.rgbColor = @"R  255  G  78  B  78";
        [_dataArray addObject:m13];
        
        ColorModel *m12 = [ColorModel new];
        m12.hexColor = @"FFD300";
        m12.rgbColor = @"R  255  G  211  B  0";
        [_dataArray addObject:m12];
        
        ColorModel *m11 = [ColorModel new];
        m11.hexColor = @"99D61B";
        m11.rgbColor = @"R  153  G  214  B  27";
        [_dataArray addObject:m11];
        
        ColorModel *m10 = [ColorModel new];
        m10.hexColor = @"2D8EFF";
        m10.rgbColor = @"R  45  G  142  B  255";
        [_dataArray addObject:m10];
        
        ColorModel *m1 = [ColorModel new];
        m1.hexColor = @"30DCFD";
        m1.rgbColor = @"R  48  G  220  B  253";
        [_dataArray addObject:m1];
        
        ColorModel *m2 = [ColorModel new];
        m2.hexColor = @"E0E0E0";
        m2.rgbColor = @"R  224  G  224  B  224";
        [_dataArray addObject:m2];
        
        ColorModel *m3 = [ColorModel new];
        m3.hexColor = @"FD305A";
        m3.rgbColor = @"R  253  G  48  B  90";
        [_dataArray addObject:m3];
        
        ColorModel *m6 = [ColorModel new];
        m6.hexColor = @"FF5B00";
        m6.rgbColor = @"R  255  G  91  B  0";
        [_dataArray addObject:m6];
        
        ColorModel *m7 = [ColorModel new];
        m7.hexColor = @"FF465A";
        m7.rgbColor = @"R  255  G  70  B  90";
        [_dataArray addObject:m7];
        
        ColorModel *m8 = [ColorModel new];
        m8.hexColor = @"3D83FF";
        m8.rgbColor = @"R  61  G  131  B  255";
        [_dataArray addObject:m8];
        
        ColorModel *m4 = [ColorModel new];
        m4.hexColor = @"6D6E7D";
        m4.rgbColor = @"R  109  G  110  B  125";
        [_dataArray addObject:m4];
        
        ColorModel *m9 = [ColorModel new];
        m9.hexColor = @"303030";
        m9.rgbColor = @"R  48  G  48  B  48";
        [_dataArray addObject:m9];
        
        ColorModel *m5 = [ColorModel new];
        m5.hexColor = @"0D192F";
        m5.rgbColor = @"R  13  G  25  B  47";
        [_dataArray addObject:m5];
        
        ColorModel *m18 = [ColorModel new];
        m18.hexColor = @"202020";
        m18.rgbColor = @"R  32  G  32  B  32";
        [_dataArray addObject:m18];
        
        ColorModel *m16 = [ColorModel new];
        m16.hexColor = @"272727";
        m16.rgbColor = @"R  39  G  39  B  39";
        [_dataArray addObject:m16];
    }
    return _dataArray;
}

@end
