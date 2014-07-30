//
//  UIImageView+GH.h
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-23.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//  UIImageview扩展 集成SDWebImage框架，有下载进度条和下载失败重试等处理机制

#import <UIKit/UIKit.h>

@interface UIImageView (GH)

- (void)setImageUrl:(NSURL *)imageUrl placeHolderImage:(UIImage *)placeHolderImage;

@end
