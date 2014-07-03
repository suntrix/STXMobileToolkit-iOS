//
//  NSObject+PropertyArray.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 19/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyArray)

/*!Gets array with names of all declared properties in class
 \returns An array of property names
 */
+ (NSArray *)propertyNamesArray;

@end
