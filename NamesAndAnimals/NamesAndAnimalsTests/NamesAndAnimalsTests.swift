//
//  NamesAndAnimalsTests.swift
//  NamesAndAnimalsTests
//
//  Created by Alisher Abdukarimov on 4/11/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import XCTest
@testable import NamesAndAnimals

class NamesAndAnimalsTests: XCTestCase {
    
//Write a function names that accepts [String: Set<String>] and returns [String] containing all of the names sorted alphabetically. (hint: There is a function to sort an array. Its name is not meant to be surprising.) Call names with the provided dictionary.
    
    let students: [String: Set<String>] = [
        "Susan" : [
            "Porcupine",
            "Armadillo",
            "Opossum",
            "Goat",
        ],
        "Suzanne" : [
            "Zebra",
            "Porcupine",
        ],
        "Susie" : [],
        "Siouxsie" : [
            "Zebra",
            "Porcupine",
            "Elephant",
            "Rabbit",
            "Falcon",
        ],
        "John" : [
            "Goat",
            "Elephant",
            "Rabbit",
            "Squid",
        ],
        "Jon" : [
            "Horse",
            "Hippopotamus",
            "Butterfly"
        ],
        "Jonah" : ["Whale",
                   "Lion",
                   "Zebra",
                   "Dog",
                   "Zebra",
                   "Porcupine",
                   "Armadillo",
                   "Opossum",
                   "Goat",
                   "Elephant",
                   "Rabbit",
                   "Squid",
                   "Falcon",
                   "Octopus",],
        "Jonathan" : [
            "Snail",
            "Cobra"
        ],
        "Jonas" : [
            "Cheetah",
            "Tiger"
        ],
        ]

    
    func testName() {
        

        
        let result = names(names: students)
        let expected: [String] = ["John", "Jon", "Jonah", "Jonas", "Jonathan", "Siouxsie", "Susan", "Susie", "Suzanne"]
        XCTAssertEqual(result, expected)
        
        
    }
    

    
    
    func testAnimalCount() {
        let result = animalCount(students)
        let expected: [(name: String, count: Int)] = [(name: "John", count: 4), (name: "Jon", count: 3), (name: "Jonah", count: 13), (name: "Jonas", count: 2), (name: "Jonathan", count: 2), (name: "Siouxsie", count: 5), (name: "Susan", count: 4), (name: "Susie", count: 0), (name: "Suzanne", count: 2)]
        
        for (resultItem, expectedItem) in zip(result, expected) {
        XCTAssertEqual(resultItem.name, expectedItem.name)
        XCTAssertEqual(resultItem.count, expectedItem.count)
        }
    
    
  }
    
    
    
    func testSpoilSport() {
    
        let result = spoilSport(names: students)
        let expected: Set<String> = ["Susie"]
        XCTAssertEqual(result, expected)
      
    }
    
    
    
    func testFindStudentWithTheMost() {
        let result = getTheMaxNumber(students: students)
        let expected: (key: String, value: Set<String>) = (key: "Jonah", value: Set(["Dog", "Elephant", "Goat", "Falcon", "Octopus", "Lion", "Whale", "Porcupine", "Opossum", "Squid", "Armadillo", "Zebra", "Rabbit"]))

        XCTAssertTrue(result == expected)
        
        
        
             }
    
    
    func testFindStudentWithLeast() {
        let result = getTheLeastNumber(students: students)
        let expected: (key: String, value: Set<String>) = (key: "Susie", value: Set([]))
        XCTAssertTrue(result == expected)
        
        
        
        
    }
    
    
    func testFind1() {
    
        let result = findStudent(students, .theMost)
        let expected: String = "Jonah"
        XCTAssertEqual(result, expected)
    
    
    }
    
    
    func testAverageCount() {
        let result = averageCount(input: students)
        let expected: Int = 3
        XCTAssertEqual(result, expected)
    
    }
    
    
    func testSortedByNames() {
        let result = allAnimals(input: students)
        let expected: [String] = ["Goat", "Elephant", "Squid", "Rabbit", "Butterfly", "Horse", "Hippopotamus", "Dog", "Elephant", "Goat", "Falcon", "Octopus", "Lion", "Whale", "Porcupine", "Opossum", "Squid", "Armadillo", "Zebra", "Rabbit", "Cheetah", "Tiger", "Cobra", "Snail", "Elephant", "Zebra", "Falcon", "Porcupine", "Rabbit", "Goat", "Armadillo", "Porcupine", "Opossum", "Porcupine", "Zebra"]
        XCTAssertEqual(result, expected)
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    


}
