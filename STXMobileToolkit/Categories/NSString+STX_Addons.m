//
//  NSString+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 24/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "NSString+STX_Addons.h"

#import "NSData+STX_Addons.h"

@implementation NSString (CryptoHash)

- (NSString *)MD2String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] MD2Data] hexString];
}

- (NSString *)MD4String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] MD4Data] hexString];
}

- (NSString *)MD5String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] MD5Data] hexString];
}

- (NSString *)SHA1String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] SHA1Data] hexString];
}

- (NSString *)SHA224String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] SHA224Data] hexString];
}

- (NSString *)SHA256String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] SHA256Data] hexString];
}

- (NSString *)SHA384String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] SHA384Data] hexString];
}

- (NSString *)SHA512String {
    return [[[self dataUsingEncoding:NSUTF8StringEncoding] SHA512Data] hexString];
}

@end


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
