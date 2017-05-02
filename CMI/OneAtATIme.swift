//
//  OneAtATIme.swift
//  
//
//  Created by Alisher Abdukarimov on 5/1/17.
//
//

import Foundation
import Darwin

let withoutFirst = CommandLine.arguments.dropFirst()


func getChoiceFromUser(prompt: String, choices: [String]) -> String {
    guard choices.isEmpty == false else {
        fatalError("choices must not be empty")
    }
    
    let count = choices.count
    guard count > 1 else {
        return choices.first!
    }
    
    var index = 1
    var newPrompt = prompt
    for choice in choices {
        newPrompt.append("    Enter \(index) for \(choice)\n")
        index += 1
    }
    
    print(newPrompt)
    let selectedIndex: Int = getIntFromUser(prompt: nil,
                                            failureMessage: newPrompt,
                                            predicate: { input in
                                                (input >= 1) && (input <= count)
    })
    
    return choices[selectedIndex - 1]
    
}


func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String, allowEmptyString: Bool = false) -> String {
    
    let emptyCheck: (String) -> Bool = { input in
        allowEmptyString || (input.isEmpty == false)
    }
    return getStringFromUser(prompt: optionalPrompt,
                             failureMessage: failureMessage,
                             predicate: emptyCheck)
}

func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String, predicate: (String) -> Bool) -> String {
    var optionalValue: String? = nil
    
    while optionalValue == nil {
        if let prompt = optionalPrompt {
            print(prompt)
        }
        
        optionalValue = readLine(strippingNewline: true)
        
        if let value = optionalValue {
            if predicate(value) {
                return value
            } else {
                print(failureMessage)
                optionalValue = nil
            }
        }
    }
    
    fatalError("Unpossible.")
}


func getIntFromUser(prompt: String?, failureMessage: String, predicate: (Int) -> Bool) -> Int {
    
    var integer: Int? = nil
    
    while integer == nil {
        if let thePrompt = prompt {
            print(thePrompt)
        }
        integer = Int(getStringFromUser(prompt: nil, failureMessage: failureMessage))
        
        if let unwrapped = integer,
            predicate(unwrapped) {
            return unwrapped
        } else {
            print(failureMessage)
            integer = nil
        }
    }
    
    fatalError("Unpossible.")
}

var keepAddingNumber: Bool
var arrayOfNumbers: [Int] = []


//let firstNum = getIntFromUser(prompt: "Hey what is the first number", failureMessage: "enter the freaking number", predicate: { _ in true })
//let secondNum = getIntFromUser(prompt: "Hey what is the second number", failureMessage: "enter the freaking number", predicate: { _ in true })

//func addingNumsEntered() -> Bool {
//    
//    arrayOfNumbers.append(getIntFromUser(prompt: "Hey what number would you like to add?", failureMessage: "enter the freaking number", predicate: { _ in true }))
//    let choice = getChoiceFromUser(prompt: "Would you like to keep adding number? if you do then keep adding or -> ", choices: ["Y","N"])
//    
//    if choice == "n" || choice == "N"{
//        return false
//    }else{
//        return true
//    }
//    
//}
//
//
//let start = addingNumsEntered()
//

repeat {
    arrayOfNumbers.append(getIntFromUser(prompt: "Enter a number", failureMessage: "enter the freaking number", predicate: { _ in true }))
    print("You have entered \(arrayOfNumbers.map {  $0.description }.joined(separator: ", ")):")
    let yes = "yes"
    let no = "no"
    let choice = getChoiceFromUser(prompt: "Would you like to add another number? /n ", choices: [yes, no])
    keepAddingNumber = getChoiceFromUser == yes ? true : false
    
    
}while (keepAddingNumber)


print("\(arrayOfNumbers.map {$0.description}.joined(separator: " + ")) = \(arrayOfNumbers.readLine(0, +))")












