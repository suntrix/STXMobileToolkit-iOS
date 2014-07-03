//
//  UIImage+LaunchImage.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 04/04/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UIImage+LaunchImage.h"

#import "UIDevice+STX_Extensions.h"

#define UIImageLaunchImage_retina4string ( [UIDevice currentDevice].isRetina4 ? @"-568h" : @"" )
#define UIImageLaunchImage_versionString ( [UIDevice currentDevice].isIOS7 ? @"-700" : @"" )
#define UIImageLaunchImage_deviceOrientationString ( UIInterfaceOrientationIsLandscape([UIDevice currentDevice].orientation) ? @"-Landscape" : @"-Portrait" )

@implementation UIImage (LaunchImage)

+ (UIImage *)launchImage {
    NSString *imageName = [NSString stringWithFormat:@"LaunchImage%@%@%@", UIImageLaunchImage_retina4string, UIImageLaunchImage_versionString, UIImageLaunchImage_deviceOrientationString];
    
    return [UIImage imageNamed:imageName];
}

@end
