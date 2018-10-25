//
//  UIView+UIView_CLPopAnimation.h
//  Test
//
//  Created by chenliang on 24/10/2018.
//  Copyright © 2018 yypt. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CLPopAnimation)

-(void)show;
-(void)show:(nullable void(^)(void))block;

-(void)hide;
-(void)hide:(nullable void(^)(void))block;

-(void)jelly;
-(void)jelly:(nullable void(^)(void))block;

-(void)shake;
-(void)shake:(nullable void(^)(void))block;

-(void)move:(NSValue *)point,... NS_REQUIRES_NIL_TERMINATION;
-(void)move:(void(^)(void))block point:(NSValue *)point,... NS_REQUIRES_NIL_TERMINATION;

-(void)springMove:(NSValue *)point,... NS_REQUIRES_NIL_TERMINATION;
-(void)springMove:(void(^)(void))block point:(NSValue *)point,... NS_REQUIRES_NIL_TERMINATION;

@end

NS_ASSUME_NONNULL_END
