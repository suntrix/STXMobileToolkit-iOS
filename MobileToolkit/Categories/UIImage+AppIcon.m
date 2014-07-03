//
//  UIImage+AppIcon.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 07/04/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UIImage+AppIcon.h"

#import "UIDevice+STX_Extensions.h"

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
