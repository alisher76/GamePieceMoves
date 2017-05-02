//
//  ThreeByThreeMainController.swift
//  ThreeByThree
//
//  Created by Alisher Abdukarimov on 4/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

struct Player: Equatable {
    var name: String
    var symbol: Symbol
    
    public static func == (lhs: Player, rhs: Player) -> Bool {
        
        return lhs.name == rhs.name && lhs.symbol == rhs.symbol
    }
}

enum Symbol {
    case x
    case o
    
}


enum Location {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
}

struct Game: Equatable {
    var playerOne: Player
    var playerTwo: Player
    var moves: [Move] = []
    
    public static func == (lhs: Game, rhs: Game) -> Bool {
        
        return lhs.playerOne == rhs.playerOne && lhs.playerTwo == rhs.playerTwo
    }
    
}

struct Move: Equatable{
    
    var player: Player
    var location: Location
    
    public static func == (lhs: Move, rhs: Move) -> Bool {
        
        return lhs.player == rhs.player && lhs.location == rhs.location
    }
    
}






func createPlayer(name: String, symbol: Symbol) ->Player?{
    
    if name.isEmpty {
        return nil
    }else{
        return Player(name: name, symbol: symbol)
    }
}

func createGame(xPlayer: Player, oPlayer: Player) -> Game? {
    
    if xPlayer.symbol == oPlayer.symbol {
        return nil
    }else{
        return Game(playerOne: xPlayer, playerTwo: oPlayer, moves: [])
    }
    
    
}

var alisher = createPlayer(name: "Alisher", symbol: .x)
var ezoza = createPlayer(name: "Ezoza", symbol: .o)

var newGame = createGame(xPlayer: alisher!, oPlayer: ezoza!)




func createPLay(player: Player, location: Location, game: Game) -> Game? {
    
    let move = Move(player: player, location: location)
    var newGame = game
    
    if game.moves.contains(Move(player: player, location: location)) {
        return nil
    }else{
        newGame.moves.append(move)
    }
    
    
    
    return newGame
    
}




var newPlay = createPLay(player: alisher!, location: .eight, game: newGame!)




func checkSpots(at location: Location, in game: Game) -> Symbol? {
    
    var currentSymbol: Symbol?
    
    let currentArray = game.moves
    for i in currentArray {
        
        switch i.location {
        case .eight:
            currentSymbol = i.player.symbol
        case .seven:
            currentSymbol = i.player.symbol
        case .six:
            currentSymbol = i.player.symbol
        case .five:
            currentSymbol = i.player.symbol
        case .four:
            currentSymbol = i.player.symbol
        case .three:
            currentSymbol = i.player.symbol
        case .two:
            currentSymbol = i.player.symbol
        case .one:
            currentSymbol = i.player.symbol
        default:
            return nil
        }
        
    }
    return currentSymbol
}













































