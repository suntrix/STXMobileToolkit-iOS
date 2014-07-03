//
//  NSURLRequest+SelfSignedCertificate.h
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 01/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (SelfSignedCertificate)

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host;

@end
