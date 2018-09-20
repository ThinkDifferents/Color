//
//  Main2ViewController.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "Main2ViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
#import "UIColor+JM.h"
#import "ShowViewController.h"

@interface Main2ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation Main2ViewController

- (BOOL)prefersStatusBarHidden {
    return true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = true;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    // 设置数据
    cell.textLabel.text = [NSString stringWithFormat:@"#  %@", self.dataArray[indexPath.row]];
    cell.backgroundColor = [UIColor colorWithHexString:self.dataArray[indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowViewController *vc = [ShowViewController new];
    vc.index = indexPath.row;
    vc.dataArray = self.dataArray;
    vc.isHex = true;
    [self presentViewController:vc animated:true completion:nil];
}

- (NSArray *)dataArray
{
    if (_dataArray == nil) {
        _dataArray = @[@"0B080E",@"150F1B",@"201728",@"342C3B",@"4b9cd3",@"007fae",@"48414F",@"5A5875",@"AAB79C",@"C4A69D",@"89ba16",@"#ffc43e",@"#ff9d3b",@"#e2203d",@"#990033",@"#08538c",@"#fff600",@"4285F4",@"FBBC05",@"34A853",@"EA4335",@"55ACEE",@"292F33",@"66757F",@"CCD6DD",@"E1E8ED",@"3B5998",@"8B9DC3",@"DFE3EE",@"F7F7F7",@"F65314",@"7CBB00",@"00A1F1",@"FFBB00",@"0F7DC2",@"3F729B",@"006699",@"7B0099",@"FF9900",@"146EB4",@"221F1F",@"E50914",@"F5F5F1",@"ED1C16",@"E32934",@"004883",@"FFCC00",@"003399",@"A4C639",@"594A25",@"bf5700",@"333f48",@"f8971f",@"ffd600",@"a6cd57",@"579d42",@"00a9b7",@"005f86",@"9cadb7",@"d6d2c4",@"66435A"];
    }
    return _dataArray;
}

@end
