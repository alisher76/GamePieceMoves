
import UIKit
print("hello Week two Day 6")

enum Piece {
    
    case knight
    case rook
}

struct Location: CustomStringConvertible, Hashable {
    
    var x: Int
    var y: Int
    
    var description: String {
        return ("(x: \(x), y: \(y))")
    }
    
    var hashValue: Int {
        
        return x.hashValue &+ y.hashValue
        
    }
    
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}



func possibleKnightPositions(pieceLocation: Location) -> Set<Location> {
    
    
    var moves: Set<Location> = [Location(x: pieceLocation.x + 1, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x + 1, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y - 1),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y - 1)]
    
    for move in moves {
        
        if move.x < 0 || move.x > 7 || move.y < 0 || move.y > 7 {
            moves.remove(move)
            
        }
    }
    
    return moves
    
    
}



func possibleRookPositions(pieceLocation: Location) -> Set<Location> {
    
    
    var moves: Set<Location> = [Location(x: pieceLocation.x + 1, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 1, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 2, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 2, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 3, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 3, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 4, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 4, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 5, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 5, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 6, y: pieceLocation.y),
                                Location(x: pieceLocation.x - 6, y: pieceLocation.y),
                                Location(x: pieceLocation.x + 7, y: pieceLocation.y),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 1),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 1),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 2),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 2),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 3),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 3),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 4),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 4),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 5),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 5),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 6),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 6),
                                Location(x: pieceLocation.x, y: pieceLocation.y + 7),
                                Location(x: pieceLocation.x, y: pieceLocation.y - 7)
    ]
    
    for move in moves {
        
        if move.x < 0 || move.x > 7 || move.y < 0 || move.y > 7 {
            moves.remove(move)
        }
    }
    return moves
}

print(possibleRookPositions(pieceLocation: Location(x: 0, y: 0)))

print(possibleKnightPositions(pieceLocation: Location(x: 0, y: 0)))







