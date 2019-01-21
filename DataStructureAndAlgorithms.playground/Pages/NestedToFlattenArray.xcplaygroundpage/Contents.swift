//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
// youtube reference: https://youtu.be/-8exPZke3Lw

func flattenArray(nestedArray:[Any]) -> [Int] {
    var myFlattenedArray = [Int]()
    for element in nestedArray {
        if element is Int {
            myFlattenedArray.append(element as! Int)
        } else if element is [Any] {
            let recursionResult = flattenArray(nestedArray: element as! [Any])
            for num in recursionResult {
                myFlattenedArray.append(num)
            }
        }
    }
    return myFlattenedArray
}


let result = flattenArray(nestedArray: [4,[1, [3, [4, 5]]]])
print("Result: ", result)
