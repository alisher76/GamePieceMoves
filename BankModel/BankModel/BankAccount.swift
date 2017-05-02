//
//  BankAccount.swift
//  BankModel
//
//  Created by Alisher Abdukarimov on 4/17/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


class Account: Hashable {
    
    enum AccountType {
        case checking
        case savings
    }
    
    
    
    var accountType: AccountType {
        fatalError("Unimplimented 'Account'. Use 'CheckingAccount or 'SavingsAccount'.")
    }
    
    var hashValue: Int {
        return accountType.hashValue
    }
    
    static func ==(lhs: Account, rhs: Account) -> Bool {
        return lhs.accountType == rhs.accountType
    }
    
    let id: UUID
    var balance: Double
    
    init(balance: Double = 0.0, id: UUID = UUID()) {
        self.id = id
        self.balance = balance
    }
    
    
    
    
    func withdraw(amount: Double) -> Bool{
        if amount <= balance {
            balance -= amount
            return true
        }else{
            return false
        }
    }
    
    
    func deposit(amount: Double) -> Bool {
        balance += amount
        return true
    }
    
    
    
    
    
    
}


class CheckingsAccount: Account {
    
    override var accountType: Account.AccountType{
        return .checking
    }
    
}
class SavingsAccount: Account {
    override var accountType: Account.AccountType{
        return .savings
    }
}






