//
//  GameState.swift
//  RPS
//
//  Created by Alisher Abdukarimov on 4/28/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

enum State {
   
    case notStarted
    case start
    case win
    case lose
    case draw
    
    var statusDescription: String {
        switch self {
        case .draw:
            return "Hey,its Tied lets try again"
        case .win:
            return "Hey,you won!"
        case .lose:
            return "you lost"
        case .start:
            return "LetsGetStarted"
        case .notStarted:
            return "Wanna Play"
        }
    }
    
}
