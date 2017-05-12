//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Lennart Wisbar on 11.05.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    let buzzButton = XCUIApplication().buttons["buzzButton"]
    let fizzBuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScore() {
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsScoreIfCorrect() {
        playTo(2)
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapFizzButtonScoreNotIncrementedIfWrong() {
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testTapBuzzButtonIncrementsScoreIfCorrect() {
        playTo(4)
        buzzButton.tap()    // buzz
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapBuzzButtonScoreNotIncrementedIfWrong() {
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testFizzBuzzButtonIncrementsScoreIfCorrect() {
        playTo(14)
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func testFizzBuzzButtonScoreNotIncrementedIfWrong() {
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func playTo(_ score: Int) {
        if score >= 1 { numberButton.tap() }
        if score >= 2 { numberButton.tap() }
        if score >= 3 { fizzButton.tap() }
        if score >= 4 { numberButton.tap() }
        if score >= 5 { buzzButton.tap() }
        if score >= 6 { fizzButton.tap() }
        if score >= 7 { numberButton.tap() }
        if score >= 8 { numberButton.tap() }
        if score >= 9 { fizzButton.tap() }
        if score >= 10 { buzzButton.tap() }
        if score >= 11 { numberButton.tap() }
        if score >= 12 { fizzButton.tap() }
        if score >= 13 { numberButton.tap() }
        if score >= 14 { numberButton.tap() }
        if score >= 15 { print("score too high") }
    }
}
