//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Lennart Wisbar on 10.05.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        
        _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementsScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementsScore() {
        viewController.game?.score = 4
        let _ = viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementsScore() {
        viewController.game?.score = 14
        let _ = viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testWrongMoveDoesntIncrement() {
        viewController.game?.score = 14
        let _ = viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 14)
    }
}
