//
//  ColorCell.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "ColorCell.h"
#import "ColorView.h"
#import "UIColor+JM.h"

@interface ColorCell ()

@property (weak, nonatomic) IBOutlet UILabel *hexColor;
@property (weak, nonatomic) IBOutlet UILabel *rgbColor;
@property (weak, nonatomic) IBOutlet UIView *backView;

@end

@implementation ColorCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"ColorCell";
    ColorCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil){
        cell = [[[NSBundle mainBundle] loadNibNamed:ID owner:nil options:nil] lastObject];
    }
    // 设置数据
    return cell;
}

- (void)setModel:(ColorModel *)model {
    _model = model;
    self.hexColor.text = [NSString stringWithFormat:@"#  %@", model.hexColor];
    self.rgbColor.text = model.rgbColor;
    self.backView.backgroundColor = [UIColor colorWithHexString:model.hexColor];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
