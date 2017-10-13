//: [Previous](@previous)

import Foundation

//var str = "Hello, playground"
//
//func factorialOfValue(value: UInt) -> UInt {
//    
//    if value == 0 {
//        return 1
//    }
//    
//    var product: UInt = 1
//    for i in 1...value {
//        product = product * i
//    }
//    return product
//}
//
////print(factorialOfValue(value: 5))
//
//func recursiveFactorialOfValue(value: UInt) -> UInt {
//    if value == 0 {
//        return 1
//    }
//    print(value)
//    return value * recursiveFactorialOfValue(value: value - 1)
//}
//
//print("factorial is \(recursiveFactorialOfValue(value: 5))")


func factorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    var product: UInt = 1
    for i in 1...value {
        product *= i
    }
    return product
}

//print("Factorial is : \(factorialOfValue(value: 5))")


func recursiveFactorialOfValue(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    print(value)
    return value * recursiveFactorialOfValue(value: value - 1)
}

print("recursive factorial is \(recursiveFactorialOfValue(value: 5))")







