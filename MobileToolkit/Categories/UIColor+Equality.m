//
//  UIColor+Equality.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 18/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UIColor+Equality.h"

@implementation UIColor (Equality)

- (BOOL)isEqualToColor:(UIColor *)color {
    CGFloat tolerance = 0.0001;
    CGFloat r, g, b, a, colorR, colorG, colorB, colorA;
    
    [self getRed: &r green:&g blue:&b alpha:&a];
    [color getRed: &colorR green:&colorG blue:&colorB alpha:&colorA];
    
    return ( fabs(r - colorR) < tolerance && fabs(g - colorG) < tolerance && fabs(b - colorB) < tolerance && fabs(a - colorA) < tolerance );
}

@end
