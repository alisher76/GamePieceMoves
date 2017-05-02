//
//  Helper.swift
//  OOPSpaceGame
//
//  Created by Alisher Abdukarimov on 4/30/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation


func getUserInput() -> String {
    let standardinput = FileHandle.standardInput
    var input = NSString(data: standardinput.availableData, encoding: String.Encoding.utf8.rawValue)
    
    input = input!.trimmingCharacters(in: NSCharacterSet.newlines) as NSString
    return input! as String
}
