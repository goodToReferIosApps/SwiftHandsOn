import UIKit
import Foundation

let point: (Int, Int) = (0,0)

switch point {
case (0,0):
    print("this is 0 0")
    fallthrough
case (1, 1):
    print("this is")
case let (x, y):
    print("\(x)...\(y)")

}

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var a = 10
var b = 20

swapTwoInts(&a, &b)
print("a is now = \(a) and b is now = \(b)")



func arithmeticMean(_ numbers: Double...) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    
    return sum / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 9.25, 18.75)


func someFunction(withoutDefault: Int, withDefault: Int = 4) {
    print("without default = \(withoutDefault)...with default = \(withDefault)")
}

someFunction(withoutDefault: 6)
someFunction(withoutDefault: 7, withDefault: 8)


func minMax(array: Array<Int>) -> (min: Int, max: Int) {
    var min = array[0]
    var max = array[0]
    for value in array {
        if value < min {
            min = value // 0
        } else if value > max {
            max = value // 8
        }
    }
    return (min, max)
}

var minMaxOutput = minMax(array: [-3,3,6,2,6,8,0,1])
print("mindfg = \(minMaxOutput.min) max = \(minMaxOutput.max)")

