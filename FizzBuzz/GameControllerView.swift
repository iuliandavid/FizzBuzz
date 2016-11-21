//
//  ViewController.swift
//  FizzBuzz
//
//  Created by iulian david on 11/20/16.
//  Copyright © 2016 iulian david. All rights reserved.
//

import UIKit

class GameControllerView: UIViewController {
    
    //Properties
    var game : Game?
    
    //Outlets
    @IBOutlet weak var numberButton: UIButton!
    
    /**
     Adding a property observer to update the numberButton
     When gameScore changes it will change the button's label
    */
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("1", for: .normal)
        }
    }
    
    
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
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        play("\(gameScore! + 1)")
    }
}

