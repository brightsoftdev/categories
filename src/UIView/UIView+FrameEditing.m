//
//  UIView+FrameEditing.m
//  FilmBuff
//
//  Created by Corey Johnson on 11/12/08.
//  Copyright 2008 Probably Interactive. All rights reserved.
//

#import "UIView+FrameEditing.h"


@implementation UIView (FrameEditing)

// Get Methods
// -----------
- (CGFloat)frameWidth {
	return self.frame.size.width;
}

- (CGFloat)frameHeight {
	return self.frame.size.height;
}

- (CGFloat)frameTop {
	return self.frame.origin.y;
}

- (CGFloat)frameBottom {
	return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)frameLeft {
	return self.frame.origin.x;
}

- (CGFloat)frameRight {
	return self.frame.origin.x + self.frame.size.width;
}

- (CGPoint)frameCenter {
	CGFloat xCenter = (self.frame.size.width / 2.0) + self.frame.origin.x;
	CGFloat yCenter = (self.frame.size.height / 2.0) + self.frame.origin.y;
	
	return CGPointMake(xCenter, yCenter);
}


// Set Methods
// -----------
- (UIView *)addToY:(CGFloat)value {
	CGRect frame = self.frame;
	frame.origin.y += value;	
	self.frame = frame;	
	return self;
        
}

- (UIView *)setFrameX:(CGFloat)x {
	CGRect frame = self.frame;
	frame.origin.x = x;
	
	self.frame = frame;	
	return self;
}

- (UIView *)setFrameY:(CGFloat)y {
	CGRect frame = self.frame;
	frame.origin.y = y;
	
	self.frame = frame;	
	return self;
}

- (UIView *)setFrameWidth:(CGFloat)width {
	CGRect frame = self.frame;
	frame.size.width = width;
	
	self.frame = frame;	
	return self;
}

- (UIView *)setFrameHeight:(CGFloat)height {
	CGRect frame = self.frame;
	frame.size.height = height;

	self.frame = frame;	
	return self;
}

- (UIView *)setFrameLeft:(CGFloat)left {
    [self setFrameX:left];
    return self;
}

- (UIView *)setFrameRight:(CGFloat)right {
    CGRect frame = self.frame;	
	frame.origin.x = right - self.frame.size.width;
	self.frame = frame;	
	return self;
}

- (UIView *)setFrameBottom:(CGFloat)bottom {
    CGRect frame = self.frame;	
	frame.origin.y = bottom - self.frame.size.height;
	self.frame = frame;	
	return self;
}

- (UIView *)setFrameTop:(CGFloat)top {
    [self setFrameY:top];
    return self;
}

- (UIView *)strechFrameTop:(CGFloat)top {
	CGRect frame = self.frame;	
	frame.size.height = (frame.origin.y + frame.size.height) - top;	
	frame.origin.y = top;
	self.frame = frame;	
	return self;
}

- (UIView *)strechFrameBottom:(CGFloat)bottom {
	CGRect frame = self.frame;
	frame.size.height = bottom - frame.origin.y;	
	self.frame = frame;	
	return self;
}

@end
