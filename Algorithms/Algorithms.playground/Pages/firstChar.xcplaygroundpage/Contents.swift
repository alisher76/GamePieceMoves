//: [Previous](@previous)

import Foundation

func firstChar(_ input: [String]) -> [String:String]{
    
    var back:[String:String] = [:]
    var lookUp: [String:Int] = [:]
    var string = [String]()
    
    for index in input.indices {
        
        let element = input[index]
        
        
        if let firstCharacter = element.characters.first{
            if lookUp[String(firstCharacter)] != nil {
                for i in string {
                    if i.characters.first == firstCharacter {
                        
                        back[String(firstCharacter)] = i + element
                    }
                }}else{
                lookUp[String(firstCharacter)] = 1
                string.append(element)
            }
            
            
        }
    }
    return back
}

firstChar(["salt", "tea", "soda", "toast"]) == ["s": "saltsoda", "t": "teatoast"]



