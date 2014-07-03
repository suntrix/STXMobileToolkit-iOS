//
//  NSURLRequest+SelfSignedCertificate.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 01/03/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import "NSURLRequest+SelfSignedCertificate.h"

@implementation NSURLRequest (SelfSignedCertificate)

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host {
    return YES;
}

@end
