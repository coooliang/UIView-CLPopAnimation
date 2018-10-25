# UIView+CLPopAnimation

#### Project introduction
UIView animation category with pop 

support ios 8 or later

#### 1.cocoapod add pop framework

```
pod 'pop', '~> 1.0.10'
```

#### 2.import header file

```
#import "UIView+CLPopAnimation.h"
```

#### 3.easy to use
```
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
```
<img src="https://github.com/coooliang/UIView-CLPopAnimation/blob/master/pop.gif" width="30%" height="30%" />

