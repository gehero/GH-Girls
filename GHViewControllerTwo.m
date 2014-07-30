//
//  GHViewControllerTwo.m
//  GH-Girls
//
//  Created by 杨进鹏 on 14-7-30.
//  Copyright (c) 2014年 GHGirls. All rights reserved.
//

#import "GHViewControllerTwo.h"
#import "GHViewControllerThree.h"

@interface GHViewControllerTwo ()

@end

@implementation GHViewControllerTwo
{
    UIButton *_btn;
}

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
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 30, 80, 30)];
    [_btn setTitle:@"dismiss" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(modalDissmiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}
     

- (void)modalDissmiss
{
//    GHViewControllerThree *three = [[GHViewControllerThree alloc] init];
//    [self.navigationController pushViewController:three animated:YES];
    [self dismissViewControllerAnimated:YES completion:^{
        UIWindow *wd = [UIApplication sharedApplication].keyWindow;
        NSLog(@"GHViewControllerTwo%@", wd.subviews);
        NSLog(@"GHViewControllerTwo%@", wd.rootViewController);

    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    NSLog(@"复活节科技大换个考试大纲");
}

@end
