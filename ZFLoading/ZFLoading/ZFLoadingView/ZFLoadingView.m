//
//  FiveStarsView.m
//  donghua
//
//  Created by 任子丰 on 15/11/24.
//  Copyright © 2015年 任子丰. All rights reserved.

#import "ZFLoadingView.h"

@interface ZFLoadingView ()
/** 中间剪切板*/
@property (strong, nonatomic) UIView *middleView;

@end

@implementation ZFLoadingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect subViewFrame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        //上方黄色star
        UIImageView *yellowStar = [[UIImageView alloc]initWithFrame:subViewFrame];
        yellowStar.image = [UIImage imageNamed:@"Stars"];
        [self addSubview:yellowStar];
        //中间剪切板
        self.middleView = [[UIView alloc]initWithFrame:subViewFrame];
        self.middleView.backgroundColor = [UIColor clearColor];
        self.middleView.clipsToBounds = YES;
        [self addSubview:self.middleView];
        //底部灰色star
        UIImageView *grayStar = [[UIImageView alloc]initWithFrame:subViewFrame];
        grayStar.image = [UIImage imageNamed:@"StarsGray"];
        [self.middleView addSubview:grayStar];
    }
    return self;
}

/** 设置显示图片比例（范围0~1）*/
- (void)setStarsByStars:(NSNumber *)numStars{
    CGFloat scale = [numStars floatValue];
    CGRect oldFrame = self.middleView.frame;
    oldFrame.size.height = oldFrame.size.height*scale;
    self.middleView.frame = oldFrame;
}


@end
