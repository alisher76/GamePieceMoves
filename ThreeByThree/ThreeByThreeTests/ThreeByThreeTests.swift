//
//  ThreeByThreeTests.swift
//  ThreeByThreeTests
//
//  Created by Alisher Abdukarimov on 4/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import XCTest
@testable import ThreeByThree

class ThreeByThreeTests: XCTestCase {
    
    
    func testCreatPlayerWithNoneEmptyName() {
    
        let result = createPlayer(name: "Alisher", symbol: .x)
        let expected = Player(name: "Alisher", symbol: .x)
        XCTAssert(result == expected)
   }
    
    func testCreatePlayerWithEmptyName() {
    
        let result = createPlayer(name: "", symbol: .x)
        let expected: Player? = nil
        XCTAssertEqual(result, expected)
    
    }
    
    func testCreteGameWithValidPlayers() {
       
        let ezoza = Player(name: "Ezoza", symbol: .o)
        let alisher = Player(name: "Alisha", symbol: .x)
        
        let result = createGame(xPlayer: alisher, oPlayer: ezoza)
        let expected: Game? = Game(playerOne: alisher, playerTwo: ezoza, moves: [])
        XCTAssertEqual(result, expected)
    
    }
    
    func testCreteGameWithNoneValidPlayers() {
        
        let ezoza = Player(name: "Ezoza", symbol: .o)
        let alisher = Player(name: "Alisher", symbol: .o)
        
        let result = createGame(xPlayer: alisher, oPlayer: ezoza)
        let expected: Game? = nil
        XCTAssertEqual(result, expected)
        
    }
    
    func testPlay() {
    
        let alisher = Player(name: "Alisher", symbol: .x)
        let ezoza = Player(name: "Ezoza", symbol: .o)
        let newGame = Game(playerOne: alisher, playerTwo: ezoza, moves: [])
        
        
        let result = createPLay(player: alisher, location: .eight, game: newGame)
        let expected = Game(playerOne: alisher, playerTwo: ezoza, moves: [Move(player: alisher, location: .eight)])
        
            
        XCTAssertEqual(result, expected)
    
    }
   
    func testSymbolatOccupiedLocation() {
    
    
        let alisher = Player(name: "Alisher", symbol: .x)
        let ezoza = Player(name: "Ezoza", symbol: .o)
        let newGame = Game(playerOne: alisher, playerTwo: ezoza, moves: [Move(player: ezoza, location: .eight)])
        
        let result = checkSpots(at: .eight, in: newGame)
        let expected: Symbol = .o
        
        XCTAssertEqual(result, expected)

    
    
    
    }
    
    func testSymbolatNoneOccupiedLocation() {
        
        
        let alisher = Player(name: "Alisher", symbol: .x)
        let ezoza = Player(name: "Ezoza", symbol: .o)
        let newGame = Game(playerOne: alisher, playerTwo: ezoza, moves: [])
        
        let result = checkSpots(at: .one, in: newGame)
        let expected: Symbol? = nil
        
        XCTAssertEqual(result, expected)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
}
