//
//  UIColor+Equality.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 18/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
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
