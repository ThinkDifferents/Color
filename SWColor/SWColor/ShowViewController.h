//
//  ShowViewController.h
//  SWColor
//
//  Created by EDZ on 2018/9/20.
//  Copyright © 2018 SW. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShowViewController : UIViewController

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, assign) Boolean isHex;

@end

NS_ASSUME_NONNULL_END
