//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Lennart Wisbar on 08.05.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let gameScore = gameScore else {
                FizzBuzzError.log(.gameScoreIsNil)
                return
            }
            numberButton.setTitle("\(gameScore)", for: .normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        
        guard let game = game else {
            FizzBuzzError.log(.gameIsNil)
            return
        }
        gameScore = game.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let game = game else {
            FizzBuzzError.log(.gameIsNil)
            return
        }
        let response = game.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton: play(move: .number)
        case fizzButton: play(move: .fizz)
        case buzzButton: play(move: .buzz)
        case fizzBuzzButton: play(move: .fizzBuzz)
        default: break
        }
    }
}

