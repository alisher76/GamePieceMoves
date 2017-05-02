//
//  ScoreKeeperViewController.swift
//  ScoreTicker
//
//  Created by Alisher Abdukarimov on 4/24/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

typealias Game = (team1Score: Int, team2Score: Int)

class ScoreKeeperViewController: UIViewController {
    
    var game: Game = (0,0){
        didSet {
        updateDisplay()
        }
    }
    
    
    @IBOutlet weak var showRandomNumber: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDisplay()
    }
    
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    //we will talk about strong and weak soon said by TJ
    @IBAction func team2Score(_ sender: Any) {
        game.team2Score += 1
        
        
    }
    
    @IBAction func team1Score(_ sender: Any) {
        game.team1Score += 1
        
    }
    
    @IBAction func resetScore(_ sender: Any) {
        
        
    
    }
    
    func updateDisplay(){
    button1.setTitle(game.team1Score.description, for: .normal)
        
    button2.setTitle(game.team2Score.description, for: .normal)
    
    }
    
    
    
    
    
    let randomNum:UInt32 = arc4random_uniform(100)
    
    
    
}
