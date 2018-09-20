//
//  ColorCell.h
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ColorModel;

NS_ASSUME_NONNULL_BEGIN

@interface ColorCell : UITableViewCell

@property (nonatomic, strong) ColorModel *model;
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end

NS_ASSUME_NONNULL_END
