//
//  NSArray+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 16/12/2013.
//  Copyright (c) 2013 Sebastian Owodzin. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "NSArray+STX_Addons.h"

@implementation NSArray (UniqueArray)

- (NSArray *)uniqueArrayForProperty:(NSString *)propertyName {
    NSMutableArray *filteredArray = [NSMutableArray array];
    
    for ( id obj in self ) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K ==[c] %@", [obj valueForKey:propertyName]];
        if ( NO == ( 0 < [[filteredArray filteredArrayUsingPredicate:predicate] count] ) ) {
            [filteredArray addObject:obj];
        }
    }
    
    return [NSArray arrayWithArray:filteredArray];
}

@end
