//
//  ColorView.m
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import "ColorView.h"
#import "UIColor+JM.h"
#import "UIView+BlocksKit.h"
#import "LEEAlert.h"

@interface ColorView ()

@property (weak, nonatomic) IBOutlet UILabel *hexColor;
@property (weak, nonatomic) IBOutlet UIView *CopyView;
@property (weak, nonatomic) IBOutlet UILabel *rgbColor;

@end

@implementation ColorView

+ (instancetype)colorView {
    
    
    
    ColorView *view =  [[[NSBundle mainBundle] loadNibNamed:@"ColorView" owner:nil options:nil] lastObject];
    
    __weak typeof(view) weakSelf = view;
    [view.CopyView sw_whenTapped:^{
        
        [LEEAlert alert].config
        .LeeTitle(@"提示")
        .LeeContent(@"已复制到粘贴板!")
        .LeeCancelAction(@"好的", ^{
            __strong typeof(view) view = weakSelf;
            if (view.hex) {
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                pasteboard.string = view.hex;
            } else {
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                pasteboard.string = view.model.hexColor;
            }
        })
        .LeeShow();
    }];
    
    return view;
}

- (void)setModel:(ColorModel *)model {
    _model = model;
    self.hexColor.text = [NSString stringWithFormat:@"#  %@", model.hexColor];
    self.rgbColor.text = model.rgbColor;
    self.backgroundColor = [UIColor colorWithHexString:model.hexColor];
}

- (void)setHex:(NSString *)hex {
    _hex = [hex copy];
    self.hexColor.text = [NSString stringWithFormat:@"#  %@", hex];
    self.backgroundColor = [UIColor colorWithHexString:hex];
    self.rgbColor.text = [UIColor stringWithHexString:hex];
}

@end

@implementation ColorModel

@end
