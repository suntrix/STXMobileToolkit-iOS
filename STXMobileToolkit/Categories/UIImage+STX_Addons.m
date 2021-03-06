//
//  UIImage+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 07/04/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "UIImage+STX_Addons.h"

#import "UIDevice+STX_Addons.h"

@implementation UIImage (AppIcon)

+ (UIImage *)appIcon {
    NSString *imageName = @"AppIcon";
    
    if ( UIUserInterfaceIdiomPad == UI_USER_INTERFACE_IDIOM() ) {
        imageName = [imageName stringByAppendingString:( [UIDevice currentDevice].isIOS7 ? @"76x76" : @"72x72" )];
    }
    else {
        imageName = [imageName stringByAppendingString:( [UIDevice currentDevice].isIOS7 ? @"60x60" : @"57x57" )];
    }
    
    return [UIImage imageNamed:imageName];
}

+ (UIImage *)spotlightIcon {
    NSString *imageName = @"AppIcon";
    
    if ( UIUserInterfaceIdiomPad == UI_USER_INTERFACE_IDIOM() ) {
        imageName = [imageName stringByAppendingString:( [UIDevice currentDevice].isIOS7 ? @"40x40" : @"50x50" )];
    }
    else {
        imageName = [imageName stringByAppendingString:( [UIDevice currentDevice].isIOS7 ? @"40x40" : @"29x29" )];
    }
    
    return [UIImage imageNamed:imageName];
}

+ (UIImage *)settingsIcon {
    return [UIImage imageNamed:@"AppIcon29x29"];
}

@end


#define UIImageLaunchImage_retina4string ( [UIDevice currentDevice].isRetina4 ? @"-568h" : @"" )
#define UIImageLaunchImage_versionString ( [UIDevice currentDevice].isIOS7 ? @"-700" : @"" )
#define UIImageLaunchImage_deviceOrientationString ( UIInterfaceOrientationIsLandscape([UIDevice currentDevice].orientation) ? @"-Landscape" : @"-Portrait" )

@implementation UIImage (LaunchImage)

+ (UIImage *)launchImage {
    NSString *imageName = [NSString stringWithFormat:@"LaunchImage%@%@%@", UIImageLaunchImage_retina4string, UIImageLaunchImage_versionString, UIImageLaunchImage_deviceOrientationString];
    
    return [UIImage imageNamed:imageName];
}

@end


#define UIImageScreenCapture_CGRotationValueForUIDeviceOrientation(orientation) ( UIDeviceOrientationIsLandscape(orientation) ? ( UIDeviceOrientationLandscapeLeft == orientation ? 1.0 : -1.0 ) * M_PI_2 : ( UIDeviceOrientationPortraitUpsideDown == orientation ? M_PI : 0.0 ) )

@implementation UIImage (ScreenCapture)

+ (UIImage *)imageWithScreenCapture {
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    return [self imageWithScreenCaptureCropped:CGRectMake(0, 0, screenSize.width, screenSize.height)];
}

+ (UIImage *)imageWithScreenCapture:(UIDeviceOrientation)orientation {
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    return [self imageWithScreenCaptureCropped:CGRectMake(0, 0, screenSize.width, screenSize.height) withDeviceOrientation:orientation];
}

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect {
    return [self imageWithScreenCaptureCropped:cropRect withDeviceOrientation:[UIDevice currentDevice].orientation];
}

+ (UIImage *)imageWithScreenCaptureCropped:(CGRect)cropRect withDeviceOrientation:(UIDeviceOrientation)orientation {
    if ( UIDeviceOrientationIsLandscape(orientation) ) {
        cropRect = CGRectMake(0, 0, cropRect.size.height, cropRect.size.width);
    }
    
    if ( [[UIScreen mainScreen] respondsToSelector:@selector(snapshotViewAfterScreenUpdates:)] ) { // iOS7
        UIView *view = [[[UIScreen mainScreen] snapshotViewAfterScreenUpdates:YES] resizableSnapshotViewFromRect:cropRect afterScreenUpdates:YES withCapInsets:UIEdgeInsetsZero];
        
        UIGraphicsBeginImageContext(cropRect.size);
        [view drawViewHierarchyInRect:cropRect afterScreenUpdates:YES];
    }
    else {
        UIGraphicsBeginImageContextWithOptions(cropRect.size, NO, [UIDevice currentDevice].isRetina ? 2.0f : 0.0f);
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
            if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen]) {
                NSLog(@"%s", __PRETTY_FUNCTION__);
                
                CGContextSaveGState(context);
                
                CGContextTranslateCTM(context, [window center].x, [window center].y);
                CGContextConcatCTM(context, [window transform]);
                CGContextRotateCTM(context, UIImageScreenCapture_CGRotationValueForUIDeviceOrientation(orientation));
                CGContextTranslateCTM(context, -[window bounds].size.width * [[window layer] anchorPoint].x, -[window bounds].size.height * [[window layer] anchorPoint].y);
                
                if ( UIDeviceOrientationIsLandscape(orientation) ) {
                    CGContextTranslateCTM(context, -([window bounds].size.width - [window bounds].size.height) * [[window layer] anchorPoint].x, -([window bounds].size.width - [window bounds].size.height) * [[window layer] anchorPoint].y);
                }
                
                [[window layer] renderInContext:context];
                
                CGContextRestoreGState(context);
            }
        }
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
