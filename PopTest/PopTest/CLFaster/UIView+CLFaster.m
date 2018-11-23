//
//  UIView+CLFaster.m
//  PopTest
//
//  Created by chenliang on 23/11/2018.
//  Copyright © 2018 chenl. All rights reserved.
//

#import "UIView+CLFaster.h"

@implementation UIView (CLFaster)

-(void)setCorner:(float)radius{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}
-(void)corner{
    [self setCorner:5];
}

-(void)setBorder:(float)width color:(UIColor *)color{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
    self.layer.masksToBounds = YES;
}
@end
