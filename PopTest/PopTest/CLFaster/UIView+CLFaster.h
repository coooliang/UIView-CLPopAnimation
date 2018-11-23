//
//  UIView+CLFaster.h
//  PopTest
//
//  Created by chenliang on 23/11/2018.
//  Copyright © 2018 chenl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CLFaster)

-(void)setCorner:(float)radius;
-(void)corner;
-(void)setBorder:(float)width color:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
