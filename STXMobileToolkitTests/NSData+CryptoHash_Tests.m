//
//  NSData+CryptoHash_Tests.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 3/07/2014.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//
//  This is a part of STXMobileToolkit project.
//  Project home page: http://mobiletoolkit.org
//  Project sources: https://github.com/suntrix/STXMobileToolkit-iOS
//

#import <XCTest/XCTest.h>

#import "NSData+STX_Addons.h"
#import "NSString+STX_Addons.h"

@interface NSData_CryptoHash_Tests : XCTestCase

@end

@implementation NSData_CryptoHash_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testMD2Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] MD2Data];
    NSData *expectedData = [@"CA25DB2C84FF197D6F608C4DA616590B" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testMD4Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] MD4Data];
    NSData *expectedData = [@"B51A87D9B06360D8820F4F90AC83D84A" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testMD5Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] MD5Data];
    NSData *expectedData = [@"9594F2CA735EC7B8672DA2D47D21A8C3" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA1Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] SHA1Data];
    NSData *expectedData = [@"DD5E502F2CAC882336414593979B00FA95959913" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA224Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] SHA224Data];
    NSData *expectedData = [@"56A810A6A0D2F4C296FE729CC83DD70BAEE1F855BB95DA0B5F58FED6" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA256Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] SHA256Data];
    NSData *expectedData = [@"8B527DF005CE9A7EAB53E7E1B03B06C72D3E69135AC562579D9EB31A089DA338" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA384Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] SHA384Data];
    NSData *expectedData = [@"21B196EBA40D28225F4BFAB1D44D30E369C05DE294CEC5FDC6E403A14B61E18225A24846ECC855A338D13C8F338A3AD9" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

- (void)testSHA512Data {
    NSData *data = [[NSData dataWithBytes:"some_string_123" length:6] SHA512Data];
    NSData *expectedData = [@"4BEA103A12A8EEAB75EBF4AD22ADAB1B1E7CC4A42D2A5A533E9E6AC949BE1CEFA14EB523833C35CB3640885A562E9BE0EDF9BCF6C090D743709042EFDB6F7F53" data];
    
    XCTAssertTrue([data isEqualToData:expectedData], @"%s", __PRETTY_FUNCTION__);
}

@end
