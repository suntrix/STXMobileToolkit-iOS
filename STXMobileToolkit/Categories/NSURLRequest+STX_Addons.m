//
//  NSURLRequest+STX_Addons.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 01/03/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import "NSURLRequest+STX_Addons.h"

@implementation NSURLRequest (SelfSignedCertificate)

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host {
    return YES;
}

@end
