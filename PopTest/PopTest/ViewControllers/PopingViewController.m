//
//  PopingViewController.m
//  Test
//
//  Created by chenliang on 24/10/2018.
//  Copyright © 2018 yypt. All rights reserved.
//

#import "PopingViewController.h"
#import <POP.h>
#import "UIView+CLPopAnimation.h"

@interface PopingViewController ()

@property(nonatomic,strong)UIButton *button;
@property(nonatomic,strong)UIButton *button2;
@property(nonatomic,strong)UIButton *button3;
@property(nonatomic,strong)UIButton *button4;
@property(nonatomic,strong)UIButton *button5;
@property(nonatomic,strong)UIButton *button6;
@property(nonatomic,strong)UIButton *button7;
@property(nonatomic,strong)UIButton *button8;

@end

@implementation PopingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button = [self createButton:CGRectMake(50, 150, 150, 40) title:@"shake"];
    [self.button addTarget:self action:@selector(shake) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    
    self.button2 = [self createButton:CGRectMake(50, 200, 150, 40) title:@"springMove"];
    [self.button2 addTarget:self action:@selector(springMove) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button2];
    
    self.button3 = [self createButton:CGRectMake(50, 250, 150, 40) title:@"move"];
    [self.button3 addTarget:self action:@selector(move) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button3];
    
    self.button4 = [self createButton:CGRectMake(50, 300, 150, 40) title:@"jelly"];
    [self.button4 addTarget:self action:@selector(jelly) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button4];
    
    self.button6 = [self createButton:CGRectMake(50, 400, 150, 40) title:@"hide"];
    [self.button6 addTarget:self action:@selector(hide) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button6];
    
    
    self.button8 = [self createButton:CGRectMake(50, 500, 150, 40) title:@"fadeOut"];
    [self.button8 addTarget:self action:@selector(fadeOut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button8];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.button5 = [self createButton:CGRectMake(50, 350, 150, 40) title:@"show"];
    [self.button5 addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button5];
    [self.button5 cl_show];
    
    self.button7 = [self createButton:CGRectMake(50, 450, 150, 40) title:@"fadeIn"];
    [self.button7 addTarget:self action:@selector(fadeIn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button7];
    [self.button7 cl_fadeIn];
}

-(UIButton *)createButton:(CGRect)frame title:(NSString *)title{
    UIButton *button = [[UIButton alloc]initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor blackColor].CGColor;
    button.layer.masksToBounds = YES;
    [self.view addSubview:button];
    return button;
}

#pragma mark - actions
-(void)fadeIn{
    [self.button7 cl_fadeIn];
}
-(void)fadeOut{
    [self.button8 cl_fadeOut];
}
-(void)hide{
    [self.button6 cl_hide:^{
        NSLog(@"hide");
        [self.button6 removeFromSuperview];
    }];
}
-(void)show{
    [self.button5 cl_show];
}
-(void)jelly{
    [self.button4 cl_jelly];
}
-(void)shake{
    [self.button cl_shake];
}
-(void)springMove{
    //[self.button2 springMove...];
    [self.button2 cl_springMove:^{
        NSLog(@"springMove block");
    } point:[NSValue valueWithCGPoint:CGPointMake(200, 300)],[NSValue valueWithCGPoint:CGPointMake(200, 400)], nil];
}
-(void)move{
    [self.button3 cl_move:[NSValue valueWithCGPoint:CGPointMake(200, 300)],[NSValue valueWithCGPoint:CGPointMake(200, 450)],nil];
}

- (void)dealloc{
    NSLog(@"%@ dealloc",[self class]);
}

@end
