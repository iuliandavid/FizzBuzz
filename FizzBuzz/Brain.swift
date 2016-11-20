//
//  Brain.swift
//  FizzBuzz
//
//  Created by iulian david on 11/20/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import Foundation

class Brain{
    
    /**
     A function that if a number is divisible to 3
     - parameters:
         - number : the number to be tested
     - returns:
        Bool : true if divisible, else false
    */
    func isDivisibleByThree(number: Int) -> Bool {
        return (number % 3) == 0
    }
    
}