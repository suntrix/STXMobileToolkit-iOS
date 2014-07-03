//
//  NSData+Hex.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 09/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Hex)

/*!Converts object's bytes to hexadecimal string
 \returns Hexadecimal string
 */
- (NSString *)hexString;

@end
