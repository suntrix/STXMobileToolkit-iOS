//
//  NSString+CryptoHash.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 24/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "NSString+CryptoHash.h"

#import "NSData+CryptoHash.h"
#import "NSData+Hex.h"

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
