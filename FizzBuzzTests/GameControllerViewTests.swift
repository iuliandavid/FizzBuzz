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
     A dummy test to see if everyting it's ok
    */
    func test() {
        XCTAssertTrue(true)
    }
}
