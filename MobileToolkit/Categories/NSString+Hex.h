//
//  NSString+Hex.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 09/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Hex)

/*!Converts hexadecimal string to data bytes
 \returns NSData object
 */
- (NSData *)data;

@end
