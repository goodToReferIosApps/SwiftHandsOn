//: [Previous](@previous)


// https://youtu.be/eX6oGfb5RSk
// Code is from youtube channel lets build that app.
import Foundation

var str = "Hello, playground"



let numbers = [1, 3, 5, 7, 9, 12, 24]


func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = numbers.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex)/2
        let middleValue = numbers[middleIndex]
        
        print("leftIndex: \(leftIndex), rightIndex: \(rightIndex), middleValue: \(middleValue), array[\(numbers[leftIndex]), \(numbers[rightIndex])]")
        
        if  middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        } else {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearchForSearchValue(searchValue: 1, array: numbers))




// Linear search
//func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
//    for num in numbers {
//        if num == searchValue {
//            return true
//        }
//    }
//    return false
//}
//
//print(linearSearchForSearchValue(searchValue: 10, array: numbers))
