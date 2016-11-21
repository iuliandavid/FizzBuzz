//
//  ViewController.swift
//  FizzBuzz
//
//  Created by iulian david on 11/20/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

class GameControllerView: UIViewController {

    var game : Game?
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func play(_ move: String){
        
        guard let game = game else {
            print("The Game is nil")
            return
        }
        
       let response = game.play(move)
       
        gameScore = response.score
        
    }
}

