//
//  NSData+STX_Addons.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 24/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <Foundation/Foundation.h>

@interface NSData (CryptoHash)

/*!Counts MD2 hash from this object's bytes
 \returns NSData object containing MD2 hash bytes
 */
- (NSData *)MD2Data;

/*!Counts MD4 hash from this object's bytes
 \returns NSData object containing MD4 hash bytes
 */
- (NSData *)MD4Data;

/*!Counts MD5 hash from this object's bytes
 \returns NSData object containing MD5 hash bytes
 */
- (NSData *)MD5Data;

/*!Counts SHA1 hash from this object's bytes
 \returns NSData object containing SHA1 hash bytes
 */
- (NSData *)SHA1Data;

/*!Counts SHA224 hash from this object's bytes
 \returns NSData object containing SHA224 hash bytes
 */
- (NSData *)SHA224Data;

/*!Counts SHA256 hash from this object's bytes
 \returns NSData object containing SHA256 hash bytes
 */
- (NSData *)SHA256Data;

/*!Counts SHA384 hash from this object's bytes
 \returns NSData object containing SHA384 hash bytes
 */
- (NSData *)SHA384Data;

/*!Counts SHA512 hash from this object's bytes
 \returns NSData object containing SHA512 hash bytes
 */
- (NSData *)SHA512Data;

@end


@interface NSData (Hex)

/*!Converts object's bytes to hexadecimal string
 \returns Hexadecimal string
 */
- (NSString *)hexString;

@end
