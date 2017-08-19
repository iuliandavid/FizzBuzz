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
    
    var highScore : Int? {
        didSet {
            guard let score = highScore else {
                return
            }
            highScoreLbl.text = "\(score)"
        }
    }
    
    //Outlets
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var highScoreLbl: UILabel!
    
    
    /**
     Adding a property observer to update the numberButton
     When gameScore changes it will change the button's label
    */
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else {
                return
            }
            numberButton.setTitle("\(score)", for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadHighestScore()
        startGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func play(_ move: Move){
        
        guard let game = game else {
            print("The Game is nil")
            return
        }
        
       let response = game.play(move)
       
        gameScore = response.score
        
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        guard let idenitfier = sender.accessibilityIdentifier else {
            return
        }
        switch idenitfier {
        case "numberButton":
             play(Move.Number)
        case "fizzButton":
            play(Move.Fizz)
        case "buzzButton":
            play(Move.Buzz)
        case "fizzBuzzButton":
            play(Move.FizzBuzz)
        default:
            return
        }
       
    }
    
    
    @IBAction func restartGame(_ sender: Any) {
        //Save highestScore
        guard let score  = highScore else {
            
            return
        }
        var highestScore: Int = score
        let currentScore = gameScore ?? 0
        if score < currentScore {
            highestScore = currentScore
        }
        
        highScore = highestScore
        
        DataService.instance.persistToUserDefaults(key: keyForHighScore, value: highestScore)
        startGame()
    }
    func startGame(){
        game = Game()
        
        guard let unwrappedGame = game else {
            print("Game not initialized")
            return
        }
        //Assigning gameScore to the default initialized 0 score of new game
        gameScore = unwrappedGame.score
    }
    
    
    func loadHighestScore(){
        //load the highestScore
        if let highScore = UserDefaults.standard.value(forKey: keyForHighScore) {
            self.highScore = highScore as? Int
        } else {
            highScore = 0
        }
    }
    
}

