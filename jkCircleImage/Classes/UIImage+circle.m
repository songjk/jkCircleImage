//
//  UIImage+circle.m
//  imagetest
//
//  Created by Jingkui Song on 2018/2/22.
//  Copyright © 2019年 Jingkui Song. All rights reserved.
//  change current image to circle image

#import "UIImage+circle.h"

@implementation UIImage (circle)
- (UIImage *)circleImage {
    // NO代表透明
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    // 获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    // 裁剪
    CGContextClip(ctx);
    // 将图片画上去
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭上下文
    UIGraphicsEndImageContext();
    return image;
}
@end
