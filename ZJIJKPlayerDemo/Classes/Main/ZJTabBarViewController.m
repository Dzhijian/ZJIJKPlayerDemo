//
//  ZJTabBarViewController.m
//  ZJIJKPlayerDemo
//
//  Created by 邓志坚 on 2018/10/15.
//  Copyright © 2018 邓志坚. All rights reserved.
//

#import "ZJTabBarViewController.h"
#import "ZJHomeViewController.h"
#import "ZJNavigationController.h"

@interface ZJTabBarViewController ()

@end

@implementation ZJTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpChildVC:[[ZJHomeViewController alloc]init] title:@"首页"];
}

-(void)setUpChildVC:(UIViewController *)childVc title:(NSString *)title {
    childVc.title = title;
    ZJNavigationController *nav = [[ZJNavigationController alloc]initWithRootViewController:childVc];
    [self addChildViewController:nav];
}




@end
