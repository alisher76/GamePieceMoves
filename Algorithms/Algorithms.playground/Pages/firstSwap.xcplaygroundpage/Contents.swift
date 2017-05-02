//: [Previous](@previous)

import Foundation


func firstSwap(_ input: [String]) -> [String]{
    
    var back:[String] = []
    var lookUp: [Character:Array<String>.Index] = [:]
    var setOfChars:Set<Character> = []
    
    for index in input.indices {
        
        let element = input[index]
        
        if let firstCharacter = element.characters.first{
            if let matchPosition = lookUp[firstCharacter] {
                if setOfChars.contains(firstCharacter){
                    back.append(element)
                }else{
                    back.append(input[matchPosition])
                    setOfChars.insert(firstCharacter)
                    back[matchPosition] = element
                }
            }else{
                lookUp[firstCharacter] = index
                back.append(element)
            }
        }else{
            back.append(element)
        }
    }
    return back
}


//create a set and add extra condition

firstSwap(["ab", "ac"]) == ["ac", "ab"]
firstSwap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "aaa", "azz"]
firstSwap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "ai", "aj", "bx", "by"]





