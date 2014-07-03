//
//  NSString+CryptoHash_Tests.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 3/07/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSString+CryptoHash.h"

@interface NSString_CryptoHash_Tests : XCTestCase

@end

@implementation NSString_CryptoHash_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testMD2String {
    NSString *string = [@"some_string_123" MD2String];
    NSString *expectedString = @"6293679B752388D5DCC0ABD58A58979F";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testMD4String {
    NSString *string = [@"some_string_123" MD4String];
    NSString *expectedString = @"A2D02286D87315FB21C80B499734FB6D";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testMD5String {
    NSString *string = [@"some_string_123" MD5String];
    NSString *expectedString = @"373929BE62E06CA271773E0C9AF9598A";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA1String {
    NSString *string = [@"some_string_123" SHA1String];
    NSString *expectedString = @"12B23ECFFD8300C9143138994799A2E02D36A7DA";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA224String {
    NSString *string = [@"some_string_123" SHA224String];
    NSString *expectedString = @"9A9274BA011D58DD9F3AD0CC6ECA16E838F25406B65C7597C4FFECC6";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA256String {
    NSString *string = [@"some_string_123" SHA256String];
    NSString *expectedString = @"5ABD969A1CB76E14D9CDCCBF8F815486049CE6AC2C5961075CFD7B495AB3C031";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA384String {
    NSString *string = [@"some_string_123" SHA384String];
    NSString *expectedString = @"98A7BAE1689062810206EC6AE93401DF278673E6654710095A3A3961E27E56383470AB37FA7D703224E1D2E27E34A65F";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA512String {
    NSString *string = [@"some_string_123" SHA512String];
    NSString *expectedString = @"05757FB43FCFD6D063A50757F8C01AED5415DBE659CFE663D05C7971DCBDD7EC36EA1C294F2AED1FB5E39146CA6BF5627413AA37CC7B62C053C89FA756FAACFB";
    
    XCTAssertTrue([string isEqualToString:expectedString], @"%s", __PRETTY_FUNCTION__);
}

@end
