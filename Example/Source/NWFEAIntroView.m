//
//  NWFEAIntroView.m
//  EAIntroView
//
//  Created by 步宇星 on 2017/10/6.
//  Copyright © 2017年 SampleCorp. All rights reserved.
//

#import "NWFEAIntroView.h"
#import <YYImage/YYImage.h>

@interface NWFEAIntroView()
@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) UIImageView *pageBgBack;
@property (nonatomic, strong) UIImageView *pageBgFront;
- (void)applyDefaultsToBackgroundImageView:(UIImageView *)backgroundImageView;

@end

@implementation NWFEAIntroView



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIImageView *)bgImageView {
    if (!_bgImageView) {
        _bgImageView = [[YYAnimatedImageView alloc] initWithFrame:self.bounds];
        [self applyDefaultsToBackgroundImageView:_bgImageView];
    }
    return _bgImageView;
}

- (UIImageView *)pageBgBack {
    if (!_pageBgBack) {
        _pageBgBack = [[YYAnimatedImageView alloc] initWithFrame:self.bounds];
        [self applyDefaultsToBackgroundImageView:_pageBgBack];
        _pageBgBack.alpha = 0;
    }
    return _pageBgBack;
}

- (UIImageView *)pageBgFront {
    if (!_pageBgFront) {
        _pageBgFront = [[YYAnimatedImageView alloc] initWithFrame:self.bounds];
        [self applyDefaultsToBackgroundImageView:_pageBgFront];
        _pageBgFront.alpha = 0;
    }
    return _pageBgFront;
}

- (void)applyDefaultsToBackgroundImageView:(UIImageView *)backgroundImageView {
    backgroundImageView.backgroundColor = [UIColor clearColor];
    backgroundImageView.contentMode = self.bgViewContentMode;
    backgroundImageView.autoresizesSubviews = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    backgroundImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}

@end
