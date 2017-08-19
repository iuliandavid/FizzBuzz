//
//  Game.swift
//  FizzBuzz
//
//  Created by iulian david on 11/21/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import Foundation

class Game {
    
    
    /**
     Variable that keeps track of the player’s score (how high the have counted)
    */
    var score: Int
    
    /**
     Brain instance that let us check the number of taps
     */
    var brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
 
    /**
     ???? incomplete
     Returns if the move if correct based on the score
     - parameters:
        - move : The move to test
    */
    func play(_ move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
        
    }
}
