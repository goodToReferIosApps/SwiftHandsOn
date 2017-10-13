//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]


var numbers = [Int]()

for i in 1...1000 {
    numbers.append(i)
}

for num in numbers {
    if num % 3 == 0 && num % 5 == 0 {
        print("\(num): fizzbuzz")
    } else if num % 3 == 0 {
        print("\(num): fizz")
    } else if num % 5 == 0 {
        print("\(num): buzz")
    } else {
        print("\(num)")
    }
}
