//
//  CodeMap1.swift
//  CodeBat
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


//Modify and return the given map as follows: if the key "a" has a value, set the key "b" to have that value, and set the key "a" to have the value "". Basically "b" is a bully, taking the value and replacing it with the empty string.

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

//mapBully(["a": "candy", "b": "dirt"]) == ["a": "", "b": "candy"]
//mapBully(["a": "candy"]) == ["a": "", "b": "candy"]
//mapBully(["a": "candy", "b": "carrot", "c": "meh"]) == ["a": "", "b": "candy", "c": "meh"]


// Given a map of food keys and topping values, modify and return the map as follows: if the key "ice cream" is present, set its value to "cherry". In all cases, set the key "bread" to have the value "butter".
func topping1(_ input: [String: String]) -> [String: String] {
    var back = input
    
    if let _ = back["ice cream"] {
        back["ice cream"] = "cherry"
    }
    
    back["bread"] = "butter"
    
    return back
}






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

//mapAB2(["a": "aaa", "b": "aaa", "c": "cake"]) == ["c": "cake"]
//mapAB2(["a": "aaa", "b": "bbb"]) == ["a": "aaa", "b": "bbb"]
//mapAB2(["a": "aaa", "b": "bbb", "c": "aaa"]) == ["a": "aaa", "b": "bbb", "c": "aaa"]


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
//Modify and return the given map as follows: for this problem the map may or may not contain the "a" and "b" keys. If both keys are present, append their 2 string values together and store the result under the key "ab".

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

//Given a map of food keys and topping values, modify and return the map as follows: if the key "potato" has a value, set that as the value for the key "fries". If the key "salad" has a value, set that as the value for the key "spinach".

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

//Modify and return the given map as follows: if the keys "a" and "b" have values that have different lengths, then set "c" to have the longer value. If the values exist and have the same length, change them both to the empty string in the map.
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






