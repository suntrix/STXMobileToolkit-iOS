//
//  NSObject+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 19/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "NSObject+STX_Addons.h"

#import <objc/runtime.h>

@implementation NSObject (PropertyArray)

+ (NSArray *)propertyNamesArray {
    u_int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    NSMutableArray *propertyArray = [NSMutableArray arrayWithCapacity:count];
    
    for ( int i = 0; i < count; i++ ) {
        [propertyArray addObject:[NSString stringWithCString:property_getName(properties[i]) encoding:NSUTF8StringEncoding]];
    }
    
    free(properties);
    
    return [NSArray arrayWithArray:propertyArray];
}

@end
