//
//  Customer.swift
//  BankModel
//
//  Created by Alisher Abdukarimov on 4/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


class Customer: Person {
    //Hash
    let email: String
    
    override var hashValue: Int {
        return email.hashValue
    }
    
    static func ==(lhs: Customer, rhs: Customer) -> Bool {
        return lhs.email == rhs.email
    }
    
    init?(givenName: String, familyName: String, email: String) {
        guard email.isEmpty == false else{
            return nil
        }
        self.email = email
        super.init(givenName: givenName, familyName: familyName)
    }
    
    
}
