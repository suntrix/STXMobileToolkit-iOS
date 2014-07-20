//
//  UIColor+Hex_Tests.m
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

#import "UIColor+STX_Addons.h"
#import "UIColor+STX_Addons.h"

@interface UIColor_Hex_Tests : XCTestCase

@end

@implementation UIColor_Hex_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testColorWithRGBHexString {
    UIColor *color = [UIColor colorWithRGBHexString:@"643296"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:1.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
    
    color = [UIColor colorWithRGBHexString:@"#963296"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:1.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
}

- (void)testColorWithRGBAHexString {
    UIColor *color = [UIColor colorWithRGBAHexString:@"643296C8"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
    
    color = [UIColor colorWithRGBAHexString:@"#963296C8"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
}

- (void)testColorWithARGBHexString {
    UIColor *color = [UIColor colorWithARGBHexString:@"C8643296"];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
    
    color = [UIColor colorWithARGBHexString:@"#C8963296"];
    
    expectedColor = [UIColor colorWithRed:150.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
}

@end
