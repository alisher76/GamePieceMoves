//
//  ModelAmericanFootballTests.swift
//  ModelAmericanFootballTests
//
//  Created by Alisher Abdukarimov on 4/10/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import XCTest
@testable import ModelAmericanFootball

class ModelAmericanFootballTests: XCTestCase {
    
//    record(event: ScoringEvent, for team: Team, in game: Game) -> Game?

    
    func testRecord() {
    
       let newGame = Game(game: "Ali", and: "TJ", score: (team1: [], team2: []))
        let result = record(.extraPoint, for: "Ali", in: newGame)
        let expected = Game(game: "Ali", and: "TJ", score: (team1: [ScoringEvent.extraPoint], team2: []))
        XCTAssertEqual(result, expected)
        
    
    }
    
    
    func testRecord2() {
        
        let newGame = Game(game: "Ali", and: "TJ", score: (team1: [], team2: []))
        let result = record(.touchDown, for: "TJ", in: newGame)
        let expected = Game(game: "Ali", and: "TJ", score: (team1: [], team2: [ScoringEvent.touchDown]))
        XCTAssertEqual(result, expected)
        
        
    }
    
    
    func testRequestScore() {
    
    
        let newGame = Game(game: "Ali", and: "TJ", score: (team1: [ScoringEvent.extraPoint], team2: []))
        let result = newGame.requestScore(of: "Ali")
        let expected = (1)
        
        XCTAssertEqual(result, expected)
        
    }
    
    
    func testRequestScore2() {
        
        
        let newGame = Game(game: "Ali", and: "TJ", score: (team1: [], team2: [ScoringEvent.extraPoint]))
        let result = newGame.requestScore(of: "TJ")
        let expected = (1)
        
        XCTAssertEqual(result, expected)
        
    }
    
    
    func testRequestScore3() {
        
        
        let newGame = Game(game: "Ali", and: "TJ", score: (team1: [], team2: [ScoringEvent.twoPointConversions]))
        let result = newGame.requestScore(of: "TJ")
        let expected = (2)
        
        XCTAssertEqual(result, expected)
        
    }
    
    
    
    
}
