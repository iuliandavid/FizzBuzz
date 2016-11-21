//
//  GameTests.swift
//  FizzBuzz
//
//  Created by iulian david on 11/21/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /**
     Score should always start at 0
    */
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play("Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    /**
    * Correct “Buzz” move.
    */
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    /**
     * InCorrect “Buzz” move.
     */
    func testIfBuzzMoveFalse() {
        game.score = 1
        let response = game.play("Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    /**
     * Correct “FizzBuzz” move.
     */
    func testFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    /**
     * InCorrect “FizzBuzz” move.
     */
    func testFizzBuzzMoveFalse() {
        game.score = 1
        let response = game.play("FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    

    /**
     * Correct “Number” move.
     */
    func testNumberTwoMoveRight() {
        game.score = 1
        let response = game.play("2")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    /**
     * InCorrect “FizzBuzz” move.
     */
    func testNumberThreeMoveFalse() {
        game.score = 2
        let response = game.play("3")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    /**
     Tie up our scoring with the right/wrong check we’re doing. If the answer is wrong we don’t want to increment the score.
    */
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }
}
