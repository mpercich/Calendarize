//
//  TouchTimeTests.m
//  TouchTimeTests
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Jim Heising (HAARD). All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TouchTime.h"

@interface TouchTimeTests : XCTestCase

@end

@implementation TouchTimeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDate {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSDate *date = [TouchTime stringToDate:@"friday, 17 february"];
    XCTAssertEqual(date.timeIntervalSince1970, 1487286000);
}

- (void)testTime {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSDate *date = [TouchTime stringToDate:@"5 PM"];
    XCTAssertEqual(date.timeIntervalSince1970, 1485446400);
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        //NSDate *date = [TouchTime stringToDate:@"5pm"];
        // Put the code you want to measure the time of here.
    }];
}

@end
