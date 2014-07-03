//
//  NSObject+PropertyArray_Tests.m
//  MobileToolkit
//
//  Created by Sebastian Owodziń on 3/07/14.
//  Copyright (c) 2014 Sebastian Owodziń. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSObject+PropertyArray.h"

// TestObject
// ----------------------------
@interface TestObject : NSObject
@property (nonatomic, strong) NSString *propertyStringStrong;
@property (nonatomic, assign) NSInteger propertyInteger;
@property (nonatomic, weak) NSString *propertyStringWeak;
@end
@implementation TestObject
@end
// ----------------------------

@interface NSObject_PropertyArray_Tests : XCTestCase

@end

@implementation NSObject_PropertyArray_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testPropertyNamesArray {
    NSArray *properties = [TestObject propertyNamesArray];
    NSArray *expectedProperties = @[@"propertyStringStrong", @"propertyInteger", @"propertyStringWeak"];
    
    XCTAssertTrue([properties isEqualToArray:expectedProperties], @"%s", __PRETTY_FUNCTION__);
}

@end
