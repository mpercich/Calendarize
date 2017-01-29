//
//  CalendarizeTests.swift
//  CalendarizeTests
//
//  Created by Percich Michele (UniCredit Business Integrated Solutions) on 27/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

import XCTest
import Python
//@testable import "Add Event from Selection"

class CalendarizeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let pythonPath = Bundle.main.path(forResource: "python", ofType: nil, inDirectory: "dateparser/bin")
        let result = RunPython.runPythonCode("import dateparser; print(dateparser.parse('17 febbraio ore 6pm', settings={'SKIP_TOKENS': ['alle', 'ore']}))", withPythonPath: pythonPath!)
        XCTAssertEqual("2017-02-17 18:00:00\n", result!);
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
