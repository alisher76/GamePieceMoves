//
//  main.swift
//  inputExercizes
//
//  Created by Alisher Abdukarimov on 4/18/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

let hasNonWhaiteSpaceCharacters: (String) -> Bool = { input in
    let whiteSpaceCharacters = CharacterSet.whitespacesAndNewlines
    let filtered = input.unicodeScalars.filter{ char in
    whiteSpaceCharacters.contains(char)}
    
}

print("Hello, Stranger!")

let givenName = getStringFromUser(prompt: "What is your given name?", failureMessage: "Please Enter you given name", predicate: { $0.isEmpty == false } )



print("Oh, Hello \(givenName), it was a pleasure!")

let familyname = getStringFromUser(prompt: "What is your family name?", failureMessage: "Ohh My God its so easy freaking enter it MAN", predicate: { $0.isEmpty == false } )
let person = Person(givenName: givenName, familyName: familyname)

print("What a fullName bro \(person)")


//We have to take care of the input as very often input may go wrong that is why we have to be carefull about it!
