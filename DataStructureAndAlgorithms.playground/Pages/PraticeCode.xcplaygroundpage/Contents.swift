//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let array = [2, 4, 5, 7, 3, 8]

func findNumbersGreaterThanThree(numbers: [Int]) -> [Int] {
    var filteredArray = [Int]()
    for num in numbers {
        if num > 5 {
            filteredArray.append(num)
        }
    }
    return filteredArray
}

//let resultArray = findNumbersGreaterThanThree(numbers: array)

func findNumbersWith(predicate:(Int) -> Bool, numbers: [Int]) -> [Int] {
    var resultArray = [Int]()
    for num in numbers {
        if predicate(num) {
            resultArray.append(num)
        }
    }
    return resultArray
}

let filteredSet = findNumbersWith(predicate: { (num) -> Bool in
    return num > 1
}, numbers: array)

print(filteredSet)


func divide(x: Int, y: Int) -> (quo2: Int, remain: Int) {
    let quotient = x / y
    let remainder = x % y
    return (quotient, remainder)
}

let result = divide(x: 7, y: 2)
result.quo2

//------------------

func summation(for numbers: [Int]) -> Int {
    var sum = 0
    numbers.forEach{sum += $0}
    return sum
}

let mySum = [1,2,3,4].reduce(0) { (res, next) -> Int in
    return res + next
    
}

summation(for: [1,2,3])


