//
//  ViewController.swift
//  RPS
//
//  Created by Alisher Abdukarimov on 4/28/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var playButtonText: UIButton!
    @IBOutlet weak var robotButtonOutlet: UIButton!
    @IBOutlet weak var rockButtonOutlet: UIButton!
    @IBOutlet weak var paperButtonOutlet: UIButton!
    @IBOutlet weak var scissorButtonOutlet: UIButton!
    
    
    
    
    var statusOfGame: State = .notStarted
    var emoji = " "
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        start()
        
        
    }
    
    
    func start() {
        
        if statusOfGame == .notStarted{
            rockButtonOutlet.alpha = 0
            paperButtonOutlet.alpha = 0
            scissorButtonOutlet.alpha = 0
            self.view.backgroundColor = UIColor.lightGray
            robotButtonOutlet.titleLabel?.text = emoji
            print(emoji)
        }else if statusOfGame == .start {
            rockButtonOutlet.alpha = 1
            paperButtonOutlet.alpha = 1
            scissorButtonOutlet.alpha = 1
            self.view.backgroundColor = UIColor.white
            displayLabel.text = "Hello Lets do this!"
            robotButtonOutlet.titleLabel?.text = "🤖"
            playButtonText.alpha = 0
        }
    }
    
    
    func play(input: Sign) {
        
        let randonSelected = randomSign()
        emoji = randonSelected.emoji
        let gameMove = input.stateCalculater(leftPLayer: input, rigthPlayer: randonSelected)
        robotButtonOutlet.titleLabel?.text = emoji
        statusOfGame = .notStarted
        displayLabel.text = "\(gameMove.statusDescription) \n I got \(randonSelected.emoji) \n can't beleive u went for \(input)!"
        print(gameMove.statusDescription)
        playButtonText.alpha = 1
        start()
    }
    
    @IBAction func playButtonTapped(_ sender: Any) {
        statusOfGame = .start
        start()
        
        
    }
    
    
    @IBAction func scissorsButton(_ sender: Any) {
        play(input: .scissors)
        rockButtonOutlet.alpha = 0
        paperButtonOutlet.alpha = 0
        
    }
    
    
    @IBAction func paperButton(_ sender: Any) {
        play(input: .paper)
        rockButtonOutlet.alpha = 0
        scissorButtonOutlet.alpha = 0
    }
    
    
    @IBAction func robotButton(_ sender: Any) {
        robotButtonOutlet.titleLabel?.text = "🤖"
    }
    
    @IBAction func rockButton(_ sender: Any) {
        play(input: .rock)
        paperButtonOutlet.alpha = 0
        scissorButtonOutlet.alpha = 0
    }
    
    
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    
    func randomSign() -> Sign {
        let sign = randomChoice.nextInt()
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors
        }
    }
    
    
    
}

