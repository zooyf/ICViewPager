//
//  BlackGradientView.m
//  
//
//  Created by YesterdayFinder on 15/10/6.
//
//

#import "BlackGradientView.h"

@implementation BlackGradientView

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();

    //颜色的分量表示
    
    CGFloat components[] = {1.0, 1.0, 1.0, 1.0, 0.1, 0.1, 0.1, 1.0};
//
//    //颜色的位置
//    
//    CGFloat locations[] = {1.0, 0.0};
//    
//    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
//    
//    //渐变的区域是当前context，垂直于startPoint <-> endPoint线段，并且于这条线段相交的直线
//    
//    CGContextDrawLinearGradient(context, gradient, CGPointMake(100, 0), CGPointMake(200, 0), 0);
    
    CGFloat locations2[] = {0.0, 1.0};
    
    CGGradientRef gradient2 = CGGradientCreateWithColorComponents(colorSpace, components, locations2, 2);
    
    //渐变的区域是当前context，垂直于startPoint <-> endPoint线段，并且于这条线段相交的直线
    
    CGContextDrawLinearGradient(context, gradient2, CGPointMake(0, 0), CGPointMake(0, 200), 0);
    
}


@end
