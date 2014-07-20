//
//  NSData+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 24/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "NSData+STX_Addons.h"

#import <CommonCrypto/CommonDigest.h>

@implementation NSData (CryptoHash)

- (NSData *)MD2Data {
    unsigned int outputLength = CC_MD2_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_MD2(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)MD4Data {
    unsigned int outputLength = CC_MD4_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_MD4(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)MD5Data {
    unsigned int outputLength = CC_MD5_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_MD5(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)SHA1Data {
    unsigned int outputLength = CC_SHA1_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_SHA1(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)SHA224Data {
    unsigned int outputLength = CC_SHA224_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_SHA224(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)SHA256Data {
    unsigned int outputLength = CC_SHA256_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_SHA256(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)SHA384Data {
    unsigned int outputLength = CC_SHA384_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_SHA384(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

- (NSData *)SHA512Data {
    unsigned int outputLength = CC_SHA512_DIGEST_LENGTH;
	unsigned char output[outputLength];
    
	CC_SHA512(self.bytes, (unsigned int) self.length, output);
	return [NSData dataWithBytes:output length:outputLength];
}

@end


@implementation NSData (Hex)

- (NSString *)hexString {
	NSMutableString *stringBuffer = [NSMutableString stringWithCapacity:(self.length * 2)];
    
	const unsigned char *dataBuffer = [self bytes];
	for ( int i = 0; i < [self length]; ++i ) {
		[stringBuffer appendFormat:@"%02lX", (unsigned long)dataBuffer[i]];
	}
    
	return [stringBuffer copy];
}

@end
