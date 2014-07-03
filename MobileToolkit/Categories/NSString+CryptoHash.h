//
//  NSString+CryptoHash.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 24/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CryptoHash)

/*!Counts MD2 hash from this object
 \returns String containing MD2 hash
 */
- (NSString *)MD2String;

/*!Counts MD4 hash from this object
 \returns String containing MD4 hash
 */
- (NSString *)MD4String;

/*!Counts MD5 hash from this object
 \returns String containing MD5 hash
 */
- (NSString *)MD5String;

/*!Counts SHA1 hash from this object
 \returns String containing SHA1 hash
 */
- (NSString *)SHA1String;

/*!Counts SHA224 hash from this object
 \returns String containing SHA224 hash
 */
- (NSString *)SHA224String;

/*!Counts SHA256 hash from this object
 \returns String containing SHA256 hash
 */
- (NSString *)SHA256String;

/*!Counts SHA384 hash from this object
 \returns String containing SHA384 hash
 */
- (NSString *)SHA384String;

/*!Counts SHA512 hash from this object
 \returns String containing SHA512 hash
 */
- (NSString *)SHA512String;

@end
