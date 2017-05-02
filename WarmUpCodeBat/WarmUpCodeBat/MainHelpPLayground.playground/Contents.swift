//: Playground - noun: a place where people can play

import UIKit

//Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that same value. In all cases remove the key "c", leaving the rest of the map unchanged.

//Map-1 > mapShare

func dictionaryShare(input: [String:String]) -> [String:String] {

    var back = input

    if back["a"] != nil {
       back["b"] = back["a"]
    }
    
    back.removeValue(forKey: "c")

    return back

}

//let dictionary = ["a": "aaa", "b": "bbb", "c": "ccc"]
//let dictionary1 = ["a": "aaa", "c": "meh", "d": "hi"]
//let new = dictionaryShare(input: dictionary)
//let new1 = dictionaryShare(input: dictionary1)


//Topping2

//Given a map of food keys and their topping values, modify and return the map as follows: if the key "ice cream" has a value, set that as the value for the key "yogurt" also. If the key "spinach" has a value, change that value to "nuts".



func topping2(input: [String:String]) -> [String:String] {

    var back = input
    
    if back["ice cream"] != nil {
       back["yogurt"] = back["ice cream"]
    }
    if back["spinach"] != nil {
       back["spinach"] = "nuts"
    }
    return back
}

//var toppings = ["ice cream": "cherry"]
//topping2(input: toppings)
//topping2(input: ["spinach": "dirt", "ice cream": "cherry"])
//topping2(input: ["yogurt": "salt"])

//mapAB3

func mapAB3(input: [String:String]) -> [String:String] {
    var back = input

    if back["a"] != nil && back["b"] != nil {
    return input
    }else if back["a"] != nil  {
    back["b"] = back["a"]
    }else{
    back["a"] = back["b"]
    }
    return back
}


//mapAB3(input: ["a": "aaa", "c": "cake"])
//mapAB3(input: ["b": "bbb", "c": "cake"])
//mapAB3(input: ["a": "aaa", "b": "bbb", "c": "cake"])



//mapAB

func mapAB(input: [String:String]) -> [String:String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"] {
        if aValue != nil && bValue != nil {
        back["ab"] = aValue + bValue
        }else{
        return input
        }
    }
    
    
    return back
}

//
//mapAB(input: ["a": "Hi", "b": "There"])
//mapAB(input: ["a": "Hi"])
//mapAB(input: ["b": "There"])


//Topping3

func topping3(input: [String:String]) -> [String:String] {
    var back = input
    
    if back["potato"] != nil {
       back["fries"] = back["potato"]
    }
    if back["salad"] != nil {
        back["spinach"] = back["salad"]
    }
    
    return back
}

//
//topping3(input: ["potato": "ketchup"])
//topping3(input: ["potato": "butter"])
//topping3(input: ["salad": "oil", "potato": "ketchup"])

//mapAB4

func mapAB4(input: [String:String]) -> [String:String] {
    var back = input
    
    let aVAlueLength = back["a"]?.characters.count
    let bVAlueLength = back["b"]?.characters.count
    
    if aVAlueLength == bVAlueLength {
    back["a"] = ""
    back["b"] = ""
    }
    
    return back
}



//mapAB4(input: ["a": "aaa", "b": "bb", "c": "cake"])
//mapAB4(input: ["a": "aa", "b": "bb", "c": "cake"])

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

wordCount(input: ["c", "c", "c", "c"])

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


wordCount2(input: ["a", "b", "a", "c", "b"])




//<String, String> with a key for every different first character seen, with the value of all the strings starting with that character appended together in the order they appear in the array.


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

firstChar(["salt", "tea", "soda", "toast"])

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

//
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


// Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that value, and set the key "a" to have the value "". Basically "b" is a bully, taking the value and replacing it with the empty string.

func mapBully(_ input: [String: String]) -> [String: String]{
    if let aValue = input["a"] {
        var back = input
        back["b"] = aValue
        back["a"] = ""
        return back
    } else {
        return input
    }
}

mapBully(["a": "candy", "b": "dirt"]) == ["a": "", "b": "candy"]
mapBully(["a": "candy"]) == ["a": "", "b": "candy"]
mapBully(["a": "candy", "b": "carrot", "c": "meh"]) == ["a": "", "b": "candy", "c": "meh"]
// Given a map of food keys and topping values, modify and return the map as follows: if the key "ice cream" is present, set its value to "cherry". In all cases, set the key "bread" to have the value "butter".
func topping1(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let _ = back["ice cream"] {
        back["ice cream"] = "cherry"
    }
    
    back["bread"] = "butter"
    
    return back
}

topping1(["ice cream": "peanuts"]) == ["bread": "butter", "ice cream": "cherry"]
topping1([:]) == ["bread": "butter"]
topping1(["pancake": "syrup"]) == ["bread": "butter", "pancake": "syrup"]



//  Modify and return the given map as follows: if the keys "a" and "b" are both in the map and have equal values, remove them both.
func mapAB2(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"],
        aValue == bValue {
        
        back.removeValue(forKey: "a")
        back["b"] = nil
    }
    
    return back
}

mapAB2(["a": "aaa", "b": "aaa", "c": "cake"]) == ["c": "cake"]
mapAB2(["a": "aaa", "b": "bbb"]) == ["a": "aaa", "b": "bbb"]
mapAB2(["a": "aaa", "b": "bbb", "c": "aaa"]) == ["a": "aaa", "b": "bbb", "c": "aaa"]

// Modify and return the given map as follows: if the keys "a" and "b" have values that have different lengths, then set "c" to have the longer value. If the values exist and have the same length, change them both to the empty string in the map.
func mapAB4(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let aValue = back["a"],
        let bValue = back["b"] {
        let aLength = aValue.characters.count
        let bLength = bValue.characters.count
        
        if aLength < bLength {
            back["c"] = bValue
        } else  if aLength > bLength {
            back["c"] = aValue
        } else {
            back["a"] = ""
            back["b"] = ""
        }
    }
    
    return back
}

mapAB4(["a": "aaa", "b": "bb", "c": "cake"]) == ["a": "aaa", "b": "bb", "c": "aaa"]
mapAB4(["a": "aa", "b": "bbb", "c": "cake"]) == ["a": "aa", "b": "bbb", "c": "bbb"]
mapAB4(["a": "aa", "b": "bbb"]) == ["a": "aa", "b": "bbb", "c": "bbb"]



//Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array, and the value is that string's length.

func wordLen(_ input: [String]) -> [String: Int] {
    var back: [String: Int] = [:]
    
    for string in input {
        back[string] = string.characters.count
    }
    
    return back
}

wordLen(["a", "bb", "a", "bb"]) == ["bb": 2, "a": 1]
wordLen(["this", "and", "that", "and"]) == ["that": 4, "and": 3, "this": 4]
wordLen(["code", "code", "code", "bug"]) == ["code": 4, "bug": 3]


//Given an array of strings, return a Map<Int, String> containing a key for every different length in the array, and the value is a set of the strings with the associated length

func wordLengthGroup(_ input: [String]) -> [Int: Set<String>] {
    var back: [Int: Set<String>] = [:]
    
    for string in input {
        let length = string.characters.count
        if var set = back[length]  {
            set.insert(string)
            back[length] = set
        } else {
            back[length] = [string]
        }
    }
    
    return back
}





















