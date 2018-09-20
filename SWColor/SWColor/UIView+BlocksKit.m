//
//  UIView+BlocksKit.m
//  shiwei
//
//  Created by shiwei on 2017/9/29.
//  Copyright © 2015年 shiwei. All rights reserved.
//

#import "UIGestureRecognizer+BlocksKit.h"
#import "UIView+BlocksKit.h"

@implementation UIView (BlocksKit)

- (void)sw_whenTouches:(NSUInteger)numberOfTouches tapped:(NSUInteger)numberOfTaps handler:(void (^)(void))block
{
    if (!block) return;
    self.userInteractionEnabled = true;
    UITapGestureRecognizer *gesture = [UITapGestureRecognizer sw_recognizerWithHandler:^(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location) {
        if (state == UIGestureRecognizerStateRecognized) block();
    }];
    
    gesture.numberOfTouchesRequired = numberOfTouches;
    gesture.numberOfTapsRequired = numberOfTaps;
    
    [self.gestureRecognizers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (![obj isKindOfClass:[UITapGestureRecognizer class]]) return;
        
        UITapGestureRecognizer *tap = obj;
        BOOL rightTouches = (tap.numberOfTouchesRequired == numberOfTouches);
        BOOL rightTaps = (tap.numberOfTapsRequired == numberOfTaps);
        if (rightTouches && rightTaps) {
            [gesture requireGestureRecognizerToFail:tap];
        }
    }];
    
    [self addGestureRecognizer:gesture];
}



- (void)sw_whenTapped:(void (^)(void))block
{
    [self sw_whenTouches:1 tapped:1 handler:block];
}

- (void)sw_whenTappedView:(void (^)(UIView *))block{
    __weak typeof(self) weakSelf = self;
    [self sw_whenTouches:1 tapped:1 handler:^{
        __strong typeof(self) self = weakSelf;
        block(self);
    }];
}

- (void)sw_whenDoubleTapped:(void (^)(void))block
{
    [self sw_whenTouches:2 tapped:1 handler:block];
}

- (void)sw_eachSubview:(void (^)(UIView *subview))block
{
    NSParameterAssert(block != nil);
    
    [self.subviews enumerateObjectsUsingBlock:^(UIView *subview, NSUInteger idx, BOOL *stop) {
        block(subview);
    }];
}

@end

