//
//  UIImage+ScreenCapture.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 02/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScreenCapture)

+ (UIImage *)imageWithScreenCapture;

+ (UIImage *)imageWithScreenCapture:(UIDeviceOrientation)orientation;

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect;

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect withDeviceOrientation:(UIDeviceOrientation)orientation;

@end
