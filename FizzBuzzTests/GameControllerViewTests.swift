//
//  GameControllerTests.swift
//  FizzBuzz
//
//  Created by iulian david on 11/21/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import XCTest
@testable import FizzBuzz

/**
 Test Class for GameControllerView
 
 */
class GameControllerViewTests: XCTestCase {
    
    /** Instance of GameControllerView */
    var gameViewController : GameControllerView!
    
    override func setUp() {
        super.setUp()
        
        ///Because in iOS architecture the view controller is tightly coupled to it’s view,
        ///we need to initialise the our Main.storyboard, then instantiate our ViewController from there
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        gameViewController = storyboard.instantiateViewController(withIdentifier: "GameControllerView") as! GameControllerView
        UIApplication.shared.keyWindow!.rootViewController = gameViewController
        
        //_ = gameViewController.view
        // Test and Load the View at the Same Time!
        XCTAssertNotNil(gameViewController.view)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /**
     First Test
    */
    func testMove1IncrementsScore() {
        gameViewController.play("1")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    
    /** 
     Play moves 1 and 2 and test the score
    */
    func testMove2IncrementScore() {
        gameViewController.play("1")
        gameViewController.play("2")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    /**
     Test if the game instance is initialized
    */
    func testHasAGame() {
        XCTAssertNotNil(gameViewController.game)
    }
    
    /**
     Test Fizz play
     Assume the score is 2 and we play Fizz
    */
    func testFizzIncrementScore() {
        
        gameViewController.game?.score = 2
        gameViewController.play("Fizz")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    
    /**
     Test Buzz play
     Assume the score is 4 and we play Buzz
     */
    func testBuzzIncrementScore() {
        
        gameViewController.game?.score = 4
        gameViewController.play("Buzz")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    /**
     Test FizzBuzz play
     Assume the score is 14 and we play FizzBuzz
     */
    func testFizzBuzzIncrementScore() {
        
        gameViewController.game?.score = 14
        gameViewController.play("FizzBuzz")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    /**
     Based on the fact the gameScore is reseted on every View load
     Test if the user plays an incorrect move and the gameScore remains unchanged
     */
    func testIncorrectMove() {
        gameViewController.play("FizzBuzz")
        let newScore = gameViewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
