//
//  UIImage+roundedCorners.m
//  Washington
//
//  Created by Corey Johnson on 12/9/09.
//  Copyright 2009 Probably Interactive. All rights reserved.
//

#import "UIImage+roundedCorners.h"

void addRoundedRectToPath(CGContextRef context, CGRect rect, float ovalWidth, float ovalHeight);

@implementation UIImage (roundedCorners)

- (UIImage *)imageWithRoundCorners {
    int w = self.size.width;
    int h = self.size.height;
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(NULL, w, h, 8, 4 * w, colorSpace, kCGImageAlphaPremultipliedFirst);
    
    CGContextBeginPath(context);
    CGRect rect = CGRectMake(0, 0, w, h);
    addRoundedRectToPath(context, rect, 16, 16);
    CGContextClosePath(context);
    CGContextClip(context);
    
    CGContextDrawImage(context, CGRectMake(0, 0, w, h), self.CGImage);
    
    CGImageRef imageMasked = CGBitmapContextCreateImage(context);
    UIImage *newImage = [UIImage imageWithCGImage:imageMasked];
    
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    CGImageRelease(imageMasked);
    
    return newImage;
}

@end

void addRoundedRectToPath(CGContextRef context, CGRect rect, float ovalWidth, float ovalHeight){
    float fw, fh;
    if (ovalWidth == 0 || ovalHeight == 0) {
        CGContextAddRect(context, rect);
        return;
    }
    CGContextSaveGState(context);
    CGContextTranslateCTM (context, CGRectGetMinX(rect), CGRectGetMinY(rect));
    CGContextScaleCTM (context, ovalWidth, ovalHeight);
    fw = CGRectGetWidth (rect) / ovalWidth;
    fh = CGRectGetHeight (rect) / ovalHeight;
    CGContextMoveToPoint(context, fw, fh);
    
    CGContextAddLineToPoint(context, fw, 0);
    CGContextAddLineToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0, fh/2);
    CGContextAddArcToPoint(context, 0, fh, fw/2, fh, 1);
    
    CGContextClosePath(context);
    CGContextRestoreGState(context);
}
