//
//  ViewController.m
//  PopTest
//
//  Created by chenliang on 25/10/2018.
//  Copyright © 2018 chenl. All rights reserved.
//

#import "ViewController.h"
#import "PopingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)push{
    PopingViewController *vc = [[PopingViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
