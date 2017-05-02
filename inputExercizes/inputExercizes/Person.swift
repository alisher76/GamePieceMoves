//
//  Person.swift
//  inputExercizes
//
//  Created by Alisher Abdukarimov on 4/18/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


class Person: CustomStringConvertible {
    let familyName: String
    let givenName: String
    var fullName: String {
        return "\(givenName) \(familyName)"
    }
    
    
    init(givenName: String, familyName: String) {
        self.givenName = givenName
        self.familyName = familyName
    }
    
    var description: String {
    return fullName
    }
    
}
