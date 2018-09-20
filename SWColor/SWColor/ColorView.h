//
//  ColorView.h
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorModel : NSObject

@property (nonatomic, copy) NSString *hexColor;
@property (nonatomic, copy) NSString *rgbColor;

@end

@interface ColorView : UIView

+ (instancetype)colorView;
@property (nonatomic, strong) ColorModel *model;
@property (nonatomic, copy) NSString *hex;

@end

NS_ASSUME_NONNULL_END
