//
//  Employee.swift
//  BankModel
//
//  Created by Alisher Abdukarimov on 4/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import XCTest
@testable import BankModel

class EmployeeClass: XCTestCase {


    
    func testEmployee() {
        let result = Employee(givenName: "Ali",
        familyName: "Abdu", telephoneNumber: "9177247666")
        
        
        XCTAssertEqual(result?.givenName, "Ali")
        XCTAssertEqual(result?.familyName, "Abdu")
        XCTAssertEqual(result?.telephoneNumber, "9177247666")
        
    
    }
    
    
    



}
