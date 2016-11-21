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
    
    /**
     Test for returning a String **Fizz**
     when issuing check function with **3** as input
    */
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    
    /**
     Test for returning a String **Buzz**
     when issuing check function with **5** as input
     */
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, "Buzz")
    }
    
    
    /**
     Test for returning a String **FizzBuzz**
     when issuing check function with **15** as input
     */
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    /**
     Test for returning a String **1**
     when issuing check function with **1** as input
     */
    func testChcekOneShouldReturnOne() {
        let result = brain.check(1)
        XCTAssertEqual(result, "1")
    }
}
