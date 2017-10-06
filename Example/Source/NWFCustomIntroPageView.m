//
//  NWFCustomIntroPageView.m
//  EAIntroView
//
//  Created by 步宇星 on 2017/10/6.
//  Copyright © 2017年 SampleCorp. All rights reserved.
//

#import "NWFCustomIntroPageView.h"
#import <Masonry/Masonry.h>

@interface NWFCustomIntroPageView()

@property(nonatomic, strong) UIImageView *upImageView;
@property(nonatomic, strong) UIButton * upButton;
@property(nonatomic, strong) UIImageView *downImageView;
@property(nonatomic, strong) UIButton * downButton;

@end

@implementation NWFCustomIntroPageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.upImageView = [[UIImageView alloc] init];
        self.downImageView = [[UIImageView alloc] init];
        self.upButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.downButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.upImageView];
        [self addSubview:self.downImageView];
        [self addSubview:self.upButton];
        [self addSubview:self.downButton];
        //TODO 位置大小回头根据标注改
        [self.upImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top).offset(20);
            make.width.equalTo(@100);
            make.height.equalTo(@100);
            make.centerX.equalTo(self.mas_centerX);
        }];
        
        [self.downImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.upButton.mas_bottom).offset(50);
            make.width.equalTo(@100);
            make.height.equalTo(@100);
            make.centerX.equalTo(self.mas_centerX);
        }];
        
        [self.upButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.upImageView.mas_bottom).offset(50);
            make.width.equalTo(@100);
            make.height.equalTo(@40);
            make.centerX.equalTo(self.mas_centerX);
        }];
        
        [self.downButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.downImageView.mas_bottom).offset(50);
            make.width.equalTo(@100);
            make.height.equalTo(@40);
            make.centerX.equalTo(self.mas_centerX);
        }];
        
        self.upImageView.backgroundColor = [UIColor blueColor];
        self.downImageView.backgroundColor = [UIColor blueColor];
        self.upButton.backgroundColor = [UIColor blueColor];
        self.downButton.backgroundColor = [UIColor blueColor];
    }
    return self;
}


- (void)addUpButtonTarget:(id)targat action:(SEL)action
{
    [self.upButton addTarget:targat action:action forControlEvents:UIControlEventTouchUpInside];
}

- (void)addDownButtonTarget:(id)targat action:(SEL)action
{
    [self.downButton addTarget:targat action:action forControlEvents:UIControlEventTouchUpInside];
}


@end
