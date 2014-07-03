//
//  NSObject+PropertyArray.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 19/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "NSObject+PropertyArray.h"

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
