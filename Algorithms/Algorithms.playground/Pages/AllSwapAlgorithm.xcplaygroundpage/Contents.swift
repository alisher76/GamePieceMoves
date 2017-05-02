//: [Previous](@previous)

import Foundation


func allSwap(_ input: [String]) -> [String]{
    
    var back:[String] = []
    var lookUp: [Character:Array<String>.Index] = [:]
    
    for index in input.indices {
        
        let element = input[index]
        print(element)
        
        if let firstCharacter = element.characters.first{
            if let matchPosition = lookUp[firstCharacter] {
                back.append(input[matchPosition])
                back[matchPosition] = element
                lookUp[firstCharacter] = nil
            }else{
                lookUp[firstCharacter] = index
                back.append(element)
                print("happened 1once")
            }
        }else{
            
            back.append(element)
        }
    }
    return back
}

allSwap(["ab", "ac"]) == ["ac", "ab"]
//allSwap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "azz", "aaa"]
//allSwap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "aj", "ai", "by", "bx"]

var array:[String] = []

