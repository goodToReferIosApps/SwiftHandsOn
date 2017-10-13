//: [Previous](@previous)

import Foundation

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDictionary = [String: Int]()
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    
    var mostCommonName  = ""
    
    for key in nameCountDictionary.keys {
        print("\(key): \(nameCountDictionary[key]!)")
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            if nameCountDictionary[key]! > nameCountDictionary[mostCommonName]! {
                mostCommonName = key
            }
        }
    }
    
    return mostCommonName
}


print(mostCommonNameInArray(array: ["Bob", "Sally", "Sally", "Sally", "Sally", "Sally", "Sally", "Bob", "Sam", "Michael", "Sam", "Sam", "Sam"]))
