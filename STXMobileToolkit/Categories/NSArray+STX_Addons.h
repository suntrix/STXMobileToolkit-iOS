//
//  NSArray+STX_Addons.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 16/12/2013.
//  Copyright (c) 2013 Sebastian Owodzin. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <Foundation/Foundation.h>

@interface NSArray (UniqueArray)

/*!Returns an array unique objects

The uniqueness is determined using the given propertyName. If there is more than one object with the same propertyName value only one of them will be in the resulting array (which one it can be random pick).

\param propertyName
The property to use when determining uniqueness

\returns Uniue array of objects
*/
- (NSArray *)uniqueArrayForProperty:(NSString *)propertyName;

@end
