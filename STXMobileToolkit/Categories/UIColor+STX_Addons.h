//
//  UIColor+STX_Addons.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 18/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <UIKit/UIKit.h>

@interface UIColor (Equality)

/*!Compares the receiving color object to otherColor.
 
 Two color objects are equal if they hold RGBA components that are equal of the difference between the coresponding components is within the given tolerance (0.01%).
 
 \param otherColor
 The color object with which to compare the receiver.
 
 \returns YES if the contents of otherColor are equal to the contents of the receiver, otherwise NO.
 */
- (BOOL)isEqualToColor:(UIColor *)otherColor;

@end


@interface UIColor (Hex)

/*!Converts a hexadecimal RGB color string to its UIColor equivalent.
 
 \param rgbColorString
 The hexadecimal RGB color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal RGB color string.
 */
+ (UIColor *)colorWithRGBHexString:(NSString *)rgbColorString;

/*!Converts a hexadecimal RGBA color string to its UIColor equivalent.
 
 \param rgbaColorString
 The hexadecimal RGBA color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal RGBA color string.
 */
+ (UIColor *)colorWithRGBAHexString:(NSString *)rgbaColorString;

/*!Converts a hexadecimal color string to its UIColor equivalent.
 
 \param argbColorString
 The hexadecimal ARGB color string to convert.
 
 \returns The UIColor object corresponding to the specified hexadecimal ARGB color string.
 */
+ (UIColor *)colorWithARGBHexString:(NSString *)argbColorString;

@end
