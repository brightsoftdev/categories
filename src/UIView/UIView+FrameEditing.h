//
//  UIView+FrameEditing.h
//  FilmBuff
//
//  Created by Corey Johnson on 11/12/08.
//  Copyright 2008 Probably Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (FrameEditing)

- (UIView *)addToY:(CGFloat)value;

- (UIView *)setFrameX:(CGFloat)x;
- (UIView *)setFrameY:(CGFloat)y;
- (UIView *)setFrameHeight:(CGFloat)height;
- (UIView *)setFrameWidth:(CGFloat)width;

- (UIView *)setFrameLeft:(CGFloat)left;
- (UIView *)setFrameRight:(CGFloat)right;
- (UIView *)setFrameBottom:(CGFloat)bottom;
- (UIView *)setFrameTop:(CGFloat)top;

- (UIView *)strechFrameBottom:(CGFloat)bottom;
- (UIView *)strechFrameTop:(CGFloat)top;

- (CGFloat)frameWidth;
- (CGFloat)frameHeight;
- (CGFloat)frameTop;
- (CGFloat)frameBottom;
- (CGFloat)frameLeft;
- (CGFloat)frameRight;
- (CGPoint)frameCenter;

@end
