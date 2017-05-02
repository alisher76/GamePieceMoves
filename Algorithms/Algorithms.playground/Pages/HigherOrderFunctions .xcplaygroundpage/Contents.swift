//: [Previous](@previous)

import Foundation
import UIKit


let sample = ["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]

var filteredArray = [String]()

let filter = sample.filter({ $0 == "bx" }) // is not mutable

//Map

let sample2 = [2,4,6,7,8]
var transformedWithFor = [Int]()
for number in sample2 {
  //  transformedWithFor.append(number * 2)
}

var mapped = sample2.map({ return $0 * 2 })

// Reduce

var sample3 = [2,4,6,7,8]

var someElements = 0

for num in sample3 {

   // someElements += num
}

var reduced = sample3.reduce(0, {sum,num in sum + num})