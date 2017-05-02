//
//  Employee.swift
//  BankModel
//
//  Created by Alisher Abdukarimov on 4/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//



class Employee: Person {
    //Hash
    let telephoneNumber: String
    
    override var hashValue: Int {
        return telephoneNumber.hashValue
    }
    
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.telephoneNumber == rhs.telephoneNumber
    }
    
    
    init?(givenName: String, familyName: String, telephoneNumber: String) {
        self.telephoneNumber = telephoneNumber
        super.init(givenName: givenName, familyName: familyName)
    }
    
}
