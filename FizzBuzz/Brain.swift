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
        return isDivisibleBy(3, number: number)
    }
    
    
    /**
     A function that if a number is divisible to 5
     - parameters:
        - number : the number to be tested
     - returns:
     Bool : true if divisible, else false
     */
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    
    /**
     A function that if a number is divisible to 15
     - parameters:
        - number : the number to be tested
     - returns:
     Bool : true if divisible, else false
     */
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    
    /**
     A function that if a number is divisible to a divisor by checking the equality between modulo result and 0
     - parameters:
        - divisor : the number to be divised against
        - number : the number to be tested
     
     - returns:
     Bool : true if divisible, else false
     */
    func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
        return (number % divisor) == 0
    }
    
    /**
     Checks a number a returns a String
     - parameters
        - number - the number to be checked
     
     - returns
        a String containing the result of check
    */
    func check(_ number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        }
        if isDivisibleByThree(number: number) {
            return Move.Fizz
        }
        else if isDivisibleByFive(number: number) {
            return Move.Buzz
        }
        else {
            return Move.Number
        }
    }
    
    
}
