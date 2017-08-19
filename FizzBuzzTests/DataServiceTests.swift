//
//  DataServiceTests.swift
//  FizzBuzz
//
//  Created by iulian david on 11/22/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class DataServiceTests: XCTestCase
{
    let instance = DataService.instance
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
  
    
    func testPersistValue(){
        instance.persistToUserDefaults(key: keyForHighScore, value: 0)
        let persistedValue = UserDefaults.standard.value(forKey: keyForHighScore) as! Int
        
        XCTAssertEqual(0, persistedValue)

    }
    
    
}
