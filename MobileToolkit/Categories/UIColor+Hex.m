//
//  UIColor+Hex.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 18/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UIColor+Hex.h"

#define UIColorHex_FromRGBA(value) [UIColor colorWithRed:((float)((value & 0xFF000000) >> 24))/255.0 green:((float)((value & 0xFF0000) >> 16))/255.0 blue:((float)((value & 0xFF00) >> 8))/255.0 alpha:((float)(value & 0xFF))/255.0]

#define UIColorHex_FromARGB(value) [UIColor colorWithRed:((float)((value & 0xFF0000) >> 16))/255.0 green:((float)((value & 0xFF00) >> 8))/255.0 blue:((float)(value & 0xFF))/255.0 alpha:((float)((value & 0xFF000000) >> 24))/255.0]

@implementation UIColor (Hex)

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbColorString {
    return [self colorWithRGBAHexString:[rgbColorString stringByAppendingString:@"ff"]];
}

+ (UIColor *)colorWithRGBAHexString:(NSString *)rgbaColorString {
    unsigned rgbValue = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString:[self __prepareHexString:rgbaColorString]];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&rgbValue];
    
    return UIColorHex_FromRGBA(rgbValue);
}

+ (UIColor *)colorWithARGBHexString:(NSString *)argbColorString {
    unsigned rgbValue = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString:[self __prepareHexString:argbColorString]];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&rgbValue];
    
    return UIColorHex_FromARGB(rgbValue);
}

#pragma mark Private Methods

+ (NSString *)__prepareHexString:(NSString *)hexString {
    return ( NSNotFound == [hexString rangeOfString:@"#" options:NSCaseInsensitiveSearch].location ? [@"#" stringByAppendingString:hexString] : hexString );
}

@end
