//
//  UIImage+STX_Addons.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 07/04/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <UIKit/UIKit.h>

@interface UIImage (AppIcon)

+ (UIImage *)appIcon;

+ (UIImage *)spotlightIcon;

+ (UIImage *)settingsIcon;

@end


@interface UIImage (LaunchImage)

+ (UIImage *)launchImage;

@end


@interface UIImage (ScreenCapture)

+ (UIImage *)imageWithScreenCapture;

+ (UIImage *)imageWithScreenCapture:(UIDeviceOrientation)orientation;

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect;

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect withDeviceOrientation:(UIDeviceOrientation)orientation;

@end
