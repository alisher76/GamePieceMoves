//
//  SignFile.swift
//  RPS
//
//  Created by Alisher Abdukarimov on 4/28/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .paper:
            return "✋🏻"
        case .rock:
            return "✊🏻"
        case .scissors:
            return "✌🏻"
        }
        
    }
    
    
    
    func stateCalculater(leftPLayer: Sign, rigthPlayer: Sign) -> State {
        
        switch (leftPLayer,rigthPlayer) {
        case (.paper, .paper), (.rock, .rock), (.scissors, .scissors):
            return .draw
        case (.paper, .rock), (.rock, .scissors), (.scissors, .paper):
            return .win
        case (.paper, .scissors), (.scissors, .rock), (.rock, .paper):
            return .lose
        }
    }
    
}
