//
//  GHImageViewProgressView.m
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-24.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//  图片下载进度展示视图

#import "GHImageViewProgressView.h"

#define VSColor(r, g, b) [UIColor colorWithRed:(r) / 255.0 green:(r) / 255.0 blue:(r) / 255.0 alpha:1.0]
#define VSColorWithAlpha(r, g, b, a) [UIColor colorWithRed:(r) / 255.0 green:(r) / 255.0 blue:(r) / 255.0 alpha:a]

@implementation GHImageViewProgressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    CGFloat wh = self.width > self.height ? self.height : self.width;
    wh -= 10;
    CGContextRef context = UIGraphicsGetCurrentContext();
   // CGContextAddRect(context, CGRectMake(0, 0, wh, wh));
    
    // 先画背景圆
    [VSColorWithAlpha(0, 0, 0, 0.5) setFill];
    CGContextAddEllipseInRect(context, CGRectMake(5, 10, wh, wh));
    CGContextDrawPath(context, kCGPathFill);
    
//    wh -= 16;
//    [VSColorWithAlpha(30, 30, 30, 0.7) setStroke];
//    CGContextSetLineWidth(context, 15);
//    CGContextAddEllipseInRect(context, CGRectMake(5, 5, wh, wh));
//    CGContextDrawPath(context, kCGPathStroke);


}

@end
