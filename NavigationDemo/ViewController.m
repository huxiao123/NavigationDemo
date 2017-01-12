//
//  ViewController.m
//  NavigationDemo
//
//  Created by 胡啸－ Mac on 17/1/12.
//  Copyright © 2017年 gzsc-hx. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"

@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.delegate = self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    DemoViewController *demo = [[DemoViewController alloc]init];
    [self.navigationController pushViewController:demo animated:YES];
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    BOOL isVC = [viewController isKindOfClass:[self class]];
    [self.navigationController setNavigationBarHidden:isVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
