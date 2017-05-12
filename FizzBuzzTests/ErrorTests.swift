//
//  ErrorTests.swift
//  FizzBuzz
//
//  Created by Lennart Wisbar on 11.05.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ErrorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGenerateOutput() {
        let output = FizzBuzzError.generateOutput(for: FizzBuzzError.gameIsNil)
        XCTAssertEqual(output, "\nERROR: game is nil\n")
    }
    
}
