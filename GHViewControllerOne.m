//
//  GHViewControllerOne.m
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-30.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//

#import "GHViewControllerOne.h"
#import "GHViewControllerTwo.h"

@interface GHViewControllerOne ()

@end

@implementation GHViewControllerOne

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor redColor];
    [super viewDidLoad];
    
    
    UIButton *_btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 30, 80, 30)];
    [_btn setTitle:@"dismiss" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(modalDissmiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];

}

- (void)modalDissmiss
{
    GHViewControllerTwo *two = [[GHViewControllerTwo alloc] init];
    NSLog(@"GHViewControllerOne%@", [UIApplication sharedApplication].keyWindow.rootViewController.view.superview);
    // presentedViewController The view controller that is presented by this view controller, or one of its ancestors in the view controller hierarchy. (read-only)
    NSLog(@"GHViewControllerOne%@", self.presentedViewController);
    [[[UIViewController alloc] init] presentViewController:two animated:YES completion:^{
        UIWindow *wd = [UIApplication sharedApplication].keyWindow;
        NSLog(@"GHViewControllerOne%@", wd.subviews);
        NSLog(@"GHViewControllerOne%@", wd.rootViewController);
    }];

}

//- (void)viewDidAppear:(BOOL)animated
//{
//    GHViewControllerTwo *two = [[GHViewControllerTwo alloc] init];
//    [self presentViewController:two animated:YES completion:^{
//        UIWindow *wd = [UIApplication sharedApplication].keyWindow;
//            NSLog(@"GHViewControllerOne%@", wd.subviews);
//            NSLog(@"GHViewControllerOne%@", wd.rootViewController);
//    }];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    NSLog(@"dealloc");
}



@end
