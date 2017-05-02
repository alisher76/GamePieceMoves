//: [Previous](@previous)

import UIKit
let selectedTracks = "cy"
let tracks = ["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]

if let index1 = tracks.index(where: { $0 ==  selectedTracks}){
    print(index)
}
let prefix = tracks.prefix(upTo: 4)
let suffix = tracks.suffix(from: 5)
let arr = suffix + prefix