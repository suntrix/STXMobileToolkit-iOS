//
//  UIColor+Equality_Tests.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 3/07/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UIColor+Equality.h"

@interface UIColor_Equality_Tests : XCTestCase

@end

@implementation UIColor_Equality_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsEqualToColor {
    UIColor *color = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    UIColor *expectedColor = [UIColor colorWithRed:100.0/255.0 green:50.0/255.0 blue:150.0/255.0 alpha:200.0/255.0];
    
    XCTAssertTrue([color isEqualToColor:expectedColor], @"%s", __PRETTY_FUNCTION__);
}

@end
