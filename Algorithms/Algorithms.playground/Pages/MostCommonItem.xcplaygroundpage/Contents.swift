//: Playground - noun: a place where people can play

import UIKit

func mostCommonItem(array: [String]) -> String {
    var nameCountDictionary = [String:Int]()
    
    for item in array {
        if let count = nameCountDictionary[item]{
            nameCountDictionary[item] = count + 1
        }else{
            nameCountDictionary[item] = 1
        }
        
    }
    var mostCommonName = ""
    
    for key in nameCountDictionary.keys{
        
        if mostCommonName == "" {
            mostCommonName = key
        }else{
            let count = nameCountDictionary[key]
            if count! > nameCountDictionary[mostCommonName]! {
                mostCommonName = key
            }
        }
        print("\(key): \(nameCountDictionary[key]!)")
    }
    
    
    return mostCommonName
}

mostCommonItem(array: ["bob", "bob", "ali"])