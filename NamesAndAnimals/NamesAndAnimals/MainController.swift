//
//  MainController.swift
//  NamesAndAnimals
//
//  Created by Alisher Abdukarimov on 4/11/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


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
    ]
]


func names(names: [String: Set<String>]) -> [String] {
    
    let newOutput: [String] = names.keys.map({ $0 })
    
    //    for (keys, values) in names {
    //        if keys.isEmpty{
    //        return [""]
    //        }else{
    //        print(values)
    //        newOutput.append(keys)
    //        }
    //
    //    }
    
    return newOutput.sorted()
}



func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
    let unsortedListOfNames: [(String, Int)] = input.map({ (key, value) in
        return (key, value.count)
    })
    
    return unsortedListOfNames.sorted(by: { (lhs, rhs) in lhs < rhs })
}


func spoilSport(names: [String: Set<String>]) -> Set<String> {
    
    let peopleWithouthHearts = names.filter{ $0.value.count == 0 }.map{$0.key}
    return Set<String>(peopleWithouthHearts)
}




enum StudentsWithAnimals {
    
    case theMost
    case theLeast
}

func getTheMaxNumber(students: [String: Set<String>]) -> (key: String, value: Set<String>) {
    
    let maxNumberOfAnimals = students.reduce(students.first!) { (accum, element) in
        if element.value.count > accum.value.count {
            return element
        }else{
            return accum
        }
    }
    return maxNumberOfAnimals
}


func getTheLeastNumber(students: [String: Set<String>]) -> (key: String, value: Set<String>) {
    
    let minNumberOfAnimals = students.reduce(students.first!) { (accum, element) in
        if element.value.count < accum.value.count {
            return element
        }else{
            return accum
        }
    }
    return minNumberOfAnimals
}



func findStudent(_ name: [String: Set<String>], _ with: StudentsWithAnimals) -> String {
    
    var responce = ""
    
    switch with {
    case .theMost:
        responce = getTheMaxNumber(students: name).key
    case .theLeast:
        responce = getTheLeastNumber(students: name).key
        
    }
    
    return responce
}

//AverageCount

func averageCount(input: [String: Set<String>]) -> Int {
    
    let count: [Int] = input.values.map { ($0.count)  }
    let average = floor(Double((count.reduce(0, +) / (count.count))))
    
    return Int(average)
    
}


//sorted by name

func allAnimals(input: [String: Set<String>]) -> [String] {
    let sortedByNames = input.sorted{ $0.0.key < $0.1.key  }.flatMap {
        return $0.value
    }
    return sortedByNames
}

























