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
    
    let brain = Brain()
    
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
    func testThreeIsDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual( result, true)
        
    }
    
    /**
     Create the second test for isDivisibleByThree method in Brain class
     Checks if **1** is divisible by **3**
     
     **Should return false**
    */
    func testOneIsNotDivisibleByThree(){
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual( result, false)
        
    }
    
    
    /**
     Create the first test for isDivisibleByFive method in Brain class
     Checks if **5** is divisible by **5**
     **Should return true**
     */
    func testFiveIsDivisibleByFive(){
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual( result, true)
        
    }
    
    /**
     Create the second test for isDivisibleByFive method in Brain class
     Checks if **1** is divisible by **5**
     
     **Should return false**
     */
    func testOneIsNotDivisibleByFive(){
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual( result, false)
        
    }
    
    
    /**
     Create the first test for isDivisibleByFive method in Brain class
     Checks if **15** is divisible by **5** and **3**
     **Should return true**
     */
    func testFifteenIsDivisibleByThreeAndFive(){
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual( result, true)
        
    }
    
    /**
     Create the second test for isDivisibleByFive method in Brain class
     Checks if **10** is divisible by **5** and **3**
     **Should return false**
     */
    func testTenIsNotDivisibleByThreeAndFive(){
        let result = brain.isDivisibleByFifteen(number: 1)
        XCTAssertEqual( result, false)
        
    }
    
}
