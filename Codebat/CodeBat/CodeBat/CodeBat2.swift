//
//  CodeBat2.swift
//  CodeBat
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


//Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, always with the value 0. For example the string "hello" makes the pair "hello":0. We'll do more complicated counting later, but for this problem the value is simply 0.

func word0(input: [String]) -> [String:Int] {
    let inputStringArray = input
    var output:[String:Int] = [:]
    
    for i in inputStringArray {
        output.updateValue(0, forKey: i)
    }
    
    
    return output
}
//
//word0(input: ["a", "b", "a", "b"])
//word0(input: ["a", "b", "a", "c", "b"])

//The classic word-count algorithm: given an array of strings, return a Map<String, Integer> with a key for each different string, with the value the number of times that string appears in the array.
//
//wordCount(["a", "b", "a", "c", "b"]) → {"a": 2, "b": 2, "c": 1}
//wordCount(["c", "b", "a"]) → {"a": 1, "b": 1, "c": 1}
//wordCount(["c", "c", "c", "c"]) → {"c": 4}


func wordCount(input: [String]) -> [String:Int] {
    
    var back:[String:Int] = [:]
    
    for string in input {
        if let count = back[string] {
            back[string] = count + 1
        }else{
            back[string] = 1
        }
        
        
    }
    
    
    return back
}

//wordCount(input: ["c", "c", "c", "c"])


//Given an array of strings, return a Map<String, Boolean> where each different string is a key and its value is true if that string appears 2 or more times in the array.
//
//wordMultiple(["a", "b", "a", "c", "b"]) → {"a": true, "b": true, "c": false}
//wordMultiple(["c", "b", "a"]) → {"a": false, "b": false, "c": false}
//wordMultiple(["c", "c", "c", "c"]) → {"c": true}


func wordCount2(input: [String]) -> [String:Bool] {
    
    var output:[String:Bool] = [:]
    var counter = 0
    for string in input {
        if output[string] == nil {
            counter += 1
            output[string] = false
        }else if output[string] != nil && counter >= 2 {
            counter += 1
            output[string] = true
        }
        
    }
    return output
}

//Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, and the value is that string's length.

func wordLen(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for string in input {
        back[string] = string.characters.count
    }
    
    return back
}

//wordLen(["a", "bb", "a", "bb"]) == ["bb": 2, "a": 1]
//wordLen(["this", "and", "that", "and"]) == ["that": 4, "and": 3, "this": 4]
//wordLen(["code", "code", "code", "bug"]) == ["code": 4, "bug": 3]

//Given an array of non-empty strings, return a Map<String, String> with a key for every different first character seen, with the value of all the strings starting with that character appended together in the order they appear in the array.

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



// if a string matches an earlier string in the array, swap the 2 strings in the array. When a position in the array has been swapped, it no longer matches anything. Using a map, this can be solved making just one pass over the array. More difficult than it looks.

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
//allSwap(input: ["ab", "ac"])
//allSwap(input: ["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"])

//Given an array of non-empty strings, create and return a Map<String, String> as follows: for each string add its first character as a key with its last character as the value.
//
//pairs(["code", "bug"]) → {"b": "g", "c": "e"}
//pairs(["man", "moon", "main"]) → {"m": "n"}
//pairs(["man", "moon", "good", "night"]) → {"g": "d", "m": "n", "n": "t"}

func pairs(input: [String]) -> [String:String] {
    var back: [String:String] = [:]
    
    for char in input {
        if let firstChar = char.characters.first {
            if let lastChar = char.characters.last{
                back[String(firstChar)] = String(lastChar)
            }
        }
    }
    return back
}
//
//pairs(input: ["code", "bug"])
//pairs(input: ["man", "moon", "main"])
//pairs(input: ["man", "moon", "good", "night"])

//Loop over the given array of strings to build a result string like this: when a string appears the 2nd, 4th, 6th, etc. time in the array, append the string to the result. Return the empty string if no string appears a 2nd time.

func wordAppend(input: [String]) -> [String] {
    var back: [String] = []
    var forTrack: [String] = []
    
    for element in input{
        var counter = 1
        if forTrack.contains(element){
            counter += 1
            if counter % 2 == 0{
                back.append(element)
            }
        }else{
            forTrack.append(element)
            
        }
    }
    
    return back
}

//wordAppend(input: ["a", "b", "a"])
//wordAppend(input: ["a", "b", "a", "c", "a", "d", "a"])
//wordAppend(input: ["a", "", "a"])

//We'll say that 2 strings "match" if they are non-empty and their first chars are the same. Loop over and then return the given array of non-empty strings as follows: if a string matches an earlier string in the array, swap the 2 strings in the array. A particular first char can only cause 1 swap, so once a char has caused a swap, its later swaps are disabled. Using a map, this can be solved making just one pass over the array. More difficult than it looks.

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

