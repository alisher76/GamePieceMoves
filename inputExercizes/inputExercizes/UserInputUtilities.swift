//
//  UserInputUtilities.swift
//  inputExercizes
//
//  Created by Alisher Abdukarimov on 4/18/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//


//BAD IMPLEMENTATION

//func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String) -> String {
//    
//    var back: String? = ""
//    
//    while (back?.isEmpty)! {
//        if let prompt = optionalPrompt{
//        print("\(prompt)")
//        }
//        back = readLine(strippingNewline: true)
//        
//        if (back?.isEmpty)! {
//        print(failureMessage)
//        }
//    }
//    return back!
//}
//ALRIGHT IMPLEMENTATION
//func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String) -> String {
//    let allowEmptyString = false
//    
//    var optionalValue: String? = nil
//    
//    while optionalValue == nil {
//        if let prompt = optionalPrompt{
//            print("\(prompt)")
//        }
//        optionalValue = readLine(strippingNewline: true)
//        if let value = optionalValue {
//        if allowEmptyString == false && value.isEmpty{
//            print(failureMessage)
//            optionalValue = nil
//        }else{
//        return value
//        }
//      }
//    }
//    return optionalValue!
//}









// Adnvanced way to implement

func getStringFromUser(prompt optionalPrompt: String?, failureMessage: String, predicate: (String) -> Bool) -> String {
    
    
    var optionalValue: String? = nil
    
    while optionalValue == nil {
        if let prompt = optionalPrompt{
            print("\(prompt)")
        }
        optionalValue = readLine(strippingNewline: true)
        if let value = optionalValue {
            if predicate(value){
                return value
            }else{
                print(failureMessage)
                optionalValue = nil
        }
      }
    }
    return optionalValue!
}





