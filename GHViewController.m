//
//  GHViewController.m
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-23.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//

#import "GHViewController.h"
#import "UIImageView+GH.h"
#import "SDWebImageDecoder.h"


#define GHURLRequest(url) [NSURLRequest requestWithURL:[NSURL URLWithString:url]]
#define GHMutableRequest(url) [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]]

@interface GHViewController ()

@end

@implementation GHViewController
{
    UIProgressView *_progressView;
    CGFloat _progress;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"placeholder.jpg"]];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [imgView setImageUrl:[NSURL URLWithString:@"http://a.vpimg2.com/upload/vipfashion/oi/2014/07/18/106/4d9c2ab6d33c196.jpg"] placeHolderImage:[UIImage imageNamed:@"placeholder.jpg"]];
    [self.view addSubview:imgView];
    
//    _progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
//    _progressView.center = self.view.center;
//    [self.view addSubview:_progressView];
    
   // [NSURLConnection]
   // [NSURLRequest requestWithURL:[NSURL URLWithString:@""]]
//    NSMutableURLRequest *request = GHMutableRequest(@"http://a.vpimg2.com/upload/vipfashion/oi/2014/07/18/106/4d9c2ab6d33c196.jpg");
//    request.HTTPMethod = @"HEAD";
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//      //  NSLog(@"%@", response);
//        NSHTTPURLResponse *headResponse = (NSHTTPURLResponse *)response;
//        NSLog(@"%@", [[headResponse allHeaderFields] objectForKey:@"Content-Length"]);
////        NSData *dt = request.HTTPBody;
////        UIImage *img = [UIImage imageWithData:data];
////        img = [UIImage decodedImageWithImage:img];
//    }];
//    
//    [self progress];
}


- (void)progress
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_progressView setProgress:_progress++ animated:YES];
        [self progress];
    });
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
