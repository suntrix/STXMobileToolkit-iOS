//
//  NSString+Hex.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 09/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "NSString+Hex.h"

@implementation NSString (Hex)

- (NSData *)data {
    if ( 1 > self.length ) {
        return nil;
    }
    
    char tmpCh[1024] = {0};
    int count = 0;
    for ( int idx = 0; idx < self.length; idx++ ) {
        char c = [self characterAtIndex:idx];
        if ( c == (char)0x20 ) {
            continue;
        }
        
        tmpCh[count] = c;
        count++;
    }
    
    tmpCh[count] = 0;
    
    if (count % 2) {
        return nil;
    }
    
    NSString *temp = [[NSString alloc] initWithUTF8String:tmpCh];
    int m = temp.length % 2;
    if ( 0 < m ) {
        return nil;
    }
    
    NSMutableData *result = [[NSMutableData alloc] init];
    unsigned char byte;
    char hexChars[3] = {0};
    for (int idx = 0; idx < (temp.length/2); idx++) {
        hexChars[0] = [temp characterAtIndex:idx*2];
        hexChars[1] = [temp characterAtIndex:idx*2+1];
        
        if (![self __isValidChar:hexChars[0]] || ![self __isValidChar:hexChars[1]]) {
            return nil;
        }
        
        byte = strtol(hexChars, NULL, 16);
        [result appendBytes:&byte length:1];
    }
    
    return [NSData dataWithData:result];
}

#pragma mark Private Methods

- (BOOL)__isValidChar:(Byte)byteChar {
    return ( ( byteChar > (Byte)0x2F && byteChar < (Byte)0x3A ) || ( byteChar > (Byte)0x40 && byteChar < (Byte)0x47 ) || ( byteChar > (Byte)0x60 && byteChar < (Byte)0x67 ) );
}

@end
