//
//  UIImage+Retina4.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 02/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "UIImage+Retina4.h"

#import <objc/runtime.h>
#import <objc/message.h>

#import "UIDevice+STX_Extensions.h"

@implementation UIImage (Retina4)

static Method origImageNamedMethod = nil;

+ (void)initialize {
    if ( [UIDevice currentDevice].isRetina4 ) {
        if ( nil == origImageNamedMethod ) {
            origImageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
            
            method_exchangeImplementations(origImageNamedMethod, class_getClassMethod(self, @selector(imageNamedRetina4:)));
        }
    }
}

+ (UIImage *)imageNamedRetina4:(NSString *)name {
    NSMutableString *imageName = [name mutableCopy];
    
    NSRange retinaAtSymbol = [imageName rangeOfString:@"@"];
    if ( NSNotFound != retinaAtSymbol.location ) {
        [imageName insertString:@"-568h" atIndex:retinaAtSymbol.location];
    }
    else
    {
        NSRange dot = [imageName rangeOfString:@"."];
        if ( NSNotFound != dot.location ) {
            [imageName insertString:@"-568h" atIndex:dot.location];
        }
        else
        {
            [imageName appendString:@"-568h"];
        }
    }
    
    UIImage *image = [UIImage imageNamedRetina4:imageName];
    if (image) {
        return image;
    }
        
    return [UIImage imageNamedRetina4:imageName];
}

@end
