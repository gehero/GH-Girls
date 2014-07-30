//
//  UIImageView+GH.m
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-23.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//

#import "UIImageView+GH.h"
#import "UIImageView+WebCache.h"
#import "GHImageViewProgressView.h"

@implementation UIImageView (GH)

- (void)setImageUrl:(NSURL *)imageUrl placeHolderImage:(UIImage *)placeHolderImage
{
    GHImageViewProgressView *pView = [[GHImageViewProgressView alloc] initWithFrame:self.bounds];
    pView.width = CGRectGetWidth(self.frame);
    pView.height = CGRectGetHeight(self.frame);

    [self addSubview:pView];
//    [self setImageWithURL:imageUrl placeholderImage:placeHolderImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
//        
//    }];
}

@end
