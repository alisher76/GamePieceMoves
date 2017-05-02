//: [Previous](@previous)

import UIKit


var sample = "lets start by doing something fun"

func everyOtherWordReversed(input: String) -> String {
    
    let allWords = sample.components(separatedBy: " ")
    var newWord = ""
    
    //    for word in allWords {
    //
    //        if newWord != "" {
    //           newWord += " "
    //        }
    //        let reversedWord = String(word.characters.reversed())
    //        newWord += reversedWord
    //    }
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newWord != "" {
            newWord += " "
        }
        if index % 2 == 1 {
            let reversedWord = String(word.characters.reversed())
            newWord += reversedWord.stringByRemovingVowels()
        }else{
            newWord += word.stringByRemovingVowels()
        }
    }
    
    return newWord
}


extension String {
    func stringByRemovingVowels() -> String{
        var newWord1 = self
        for vowel in ["a","i","e","u","o"]{
        newWord1 = newWord1.replacingOccurrences(of: vowel, with: "")
        }
    return newWord1
    }
}

print(everyOtherWordReversed(input: sample))