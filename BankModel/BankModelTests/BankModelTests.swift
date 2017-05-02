//
//  BankModelTests.swift
//  BankModelTests
//
//  Created by Alisher Abdukarimov on 4/14/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import XCTest
@testable import BankModel

class BankModelTests: XCTestCase {
    
    
    func testAddCustomer() {
        let bank = Bank(accountsDirectory: [:], employee: [])
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let result = bank.addAccount(account: SavingsAccount.init(balance: 0.0, id: UUID()), customer: customer!)
        XCTAssertTrue(result! == true)

    
    }
    
    func testAddCustomerWhoWeAlreadyHave() {
        let account:Set<Account> = [CheckingsAccount(balance: 0.0)]
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank: Bank = Bank(accountsDirectory: [customer!:account], employee: [])
        let customer2 = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let result = bank.addAccount(account: CheckingsAccount.init(balance: 0.0), customer: customer2!)
        XCTAssertTrue(result! == false)
        
    }

    
    
    func testWithdraw(){
    
        
        let account = CheckingsAccount(balance: 100.00)
        let success = account.withdraw(amount: 75)
        XCTAssertTrue(success)
        XCTAssertTrue(account.balance == 25)
    
    }
    
    
    func testWithdrawFail(){
        
    
        let account = CheckingsAccount(balance: 100.00)
        let success = account.withdraw(amount: 20)
        XCTAssertTrue(success)
        XCTAssertTrue(account.balance == 80)
        
    }
    
    func testWithdrawUUID2(){
        let uuID = UUID()
        
        let account = CheckingsAccount(balance: 100.00, id: uuID)
        print("this is a ID \(uuID)")
        let success = account.withdraw(amount: 20)
        XCTAssertTrue(success)
        XCTAssertTrue(account.balance == 80)
        
    }
    
    
    func testDeposit(){
        
        let account = CheckingsAccount(balance: 0.00)
        let success = account.deposit(amount: 100)
        XCTAssertTrue(success)
        XCTAssertTrue(account.balance == 100)
        
    }
    
    func testAddNewEmployee(){
        let newEmployee = Employee(givenName: "John", familyName: "Doe", telephoneNumber: "8675309")
        let expected: Set<Employee> = [
            newEmployee!
        ]

        XCTAssert(expected.contains(newEmployee!))
           
    }
    
    func testCheckAllCashInCustomersAccounts() {
        let account:Set<Account> = [CheckingsAccount(balance: 30.50)]
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank = Bank(accountsDirectory: [customer!:account], employee: [])
        let result = bank.totalSumOfTheCustomersCashInAllAccounts(customer: customer!)
        let expected = 30.50
        XCTAssertEqual(result, expected)
    }
    
    
    func testTotalNumberOfAccountsInTheBank() {
        let account:Set<Account> = [CheckingsAccount(balance: 30.50)]
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank = Bank(accountsDirectory: [customer!:account], employee: [])
        let result = bank.totalNumberOfAllAccountsInTheBank()
        let expected = 1
        XCTAssertEqual(result, expected)
    }
    
    func testTotalNumberOfAccountsInTheBank2() {
        let account: Account = CheckingsAccount(balance: 30.50)
        let account1:Account = CheckingsAccount(balance: 30.50)
        let account2: Account = SavingsAccount(balance: 30.00) //This Was CheckingsAccount The Whole Time 😡 and thats why my function was not counting third account F*&^
        let customer1 = Customer(givenName: "Alisher", familyName: "Abdukarimov", email: "@mail")
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank = Bank(accountsDirectory: [customer!: [account], customer1!: [account1, account2]], employee: [])
        let result = bank.totalNumberOfAllAccountsInTheBank()
        let expected = 3
        XCTAssertEqual(result, expected)
    }
    func testTotalNumberOfAccountsInTheBank3() {
        let account3: Account = SavingsAccount(balance: 30.00)
        let account2: Account = SavingsAccount(balance: 30.00)
        let account: Account = CheckingsAccount(balance: 30.00)
        let account1: Account = CheckingsAccount(balance: 30.00)
        let customer1 = Customer(givenName: "Alisher", familyName: "Abdukarimov", email: "@mail")
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank = Bank(accountsDirectory: [customer!: [account,account2], customer1!: [account1,account3]], employee: [])
        let result = bank.totalSumOfBanksCash()
        let expected = 120.00
        XCTAssertEqual(result, expected)
    }
    
    func testTotalSumOfBanksCash() {
        let account2: Account = SavingsAccount(balance: 30.00)
        let account: Account = CheckingsAccount(balance: 30.00)
        let account1: Account = CheckingsAccount(balance: 30.00)
        let customer1 = Customer(givenName: "Alisher", familyName: "Abdukarimov", email: "@mail")
        let customer = Customer(givenName: "Ali", familyName: "Abd", email: "@")
        let bank = Bank(accountsDirectory: [customer!: [account], customer1!: [account1,account2]], employee: [])
        let result = bank.totalSumOfBanksCash()
        let expected = 90.00
        XCTAssertEqual(result, expected)
    
    }
    
    
    
}
