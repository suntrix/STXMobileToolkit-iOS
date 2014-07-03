//
//  NSString+Hex_Tests.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 3/07/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSString+Hex.h"

@interface NSString_Hex_Tests : XCTestCase

@end

@implementation NSString_Hex_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testData {
    NSData *hexData = @"BC78EB2533".data;
    
    unsigned char bytes[] = {0xBC, 0x78, 0xeb, 0x25, 0x33};
    NSData *expectedData = [NSData dataWithBytes:bytes length:sizeof(bytes)];
    
    XCTAssertTrue([hexData isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

@end
