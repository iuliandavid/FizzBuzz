//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by iulian david on 11/20/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /**
     Create the first test for isDivisibleByThree method in Brain class
      Checks if **3** is divisible by **3**
     **Should return false**
     */
    func testIsDivisibleByThree(){
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual( result, true)
        
    }
    
    /**
     Create the second test for isDivisibleByThree method in Brain class
     Checks if **1** is divisible by **3**
     
     **Should return false**
    */
    func testIsOneDivisibleByThree(){
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual( result, false)
        
    }
    
}
