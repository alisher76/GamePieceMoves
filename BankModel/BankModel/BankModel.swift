//
//  BankModel.swift
//  BankModel
//
//  Created by Alisher Abdukarimov on 4/15/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

class Bank {
    
    
    let address = "777 Alisher The Great Street, NW, GA, zip: 30707"
    
    typealias AccountsDirectory = [Customer:Set<Account>]
    
    var accountsDirectory: AccountsDirectory
    var employee: Set<Employee>
    
    
    init(accountsDirectory: AccountsDirectory, employee: Set<Employee>) {
        self.accountsDirectory = accountsDirectory
        self.employee = employee
    }
    
    var customers: Set<Customer> {
        return Set(accountsDirectory.keys)
    }
    
    
    func addAccount(account: Account, customer: Customer) -> Bool? {
        
        if var customerAccounts = accountsDirectory[customer],
            customerAccounts.contains(account) == false {
            customerAccounts.insert(account)
            accountsDirectory[customer] = customerAccounts
            return true
        }else if accountsDirectory[customer] == nil {
            accountsDirectory[customer] = [account]
            return true
        }else{
            return false
        }
    }
    
    
    func addNewEmployee(newEmployee: Employee) -> Bool {
        
        employee.insert(newEmployee)
        
        return true
        
    }
    
    func withdrawMoneyFromSpecificAccount(amount: Double, from account: Account) -> Bool {
        
        if amount > account.balance {
            return false
        }else{
            return account.withdraw(amount: amount)
        }
    }
    
    func depositToSpecificAccount(amount: Double, from account: Account) -> Bool {
        return account.deposit(amount: amount)
    }
    
    
    
    func getCustomerAccounts(customer: Customer, optionalAccountType: Account.AccountType? = nil) -> Set<Account>?
    {
        
        guard let customerAccounts = accountsDirectory[customer] else {
            return nil
        }
        guard let accountType = optionalAccountType else {
            return customerAccounts
        }
        
        let filteredArray = customerAccounts.filter{ $0.accountType == accountType
            
        }
        
        
        return Set(filteredArray)
    }
    
    func totalSumOfTheCustomersCashInAllAccounts(customer: Customer) -> Double? {
        
        guard let customerAccounts = accountsDirectory[customer] else {
            return nil
        }
        let totalBalance = customerAccounts.map{ $0.balance }.reduce(0.0, { x, y in x + y })
        
        return totalBalance
    }
    
    
    
    func totalNumberOfAllAccountsInTheBank() -> Int {
        let flattenedAccounts = accountsDirectory.values.flatMap{ $0 }.count
        return flattenedAccounts
        
    }
    
    
    
    
    func totalSumOfBanksCash() -> Double? {
        
        var total = 0.0
        
        let flattenedAccounts = accountsDirectory.flatMap{ key, value in
            return value
        }
        
        for i in flattenedAccounts {
            total += i.balance
        }
        
        return total
    }
    
    
    
}



