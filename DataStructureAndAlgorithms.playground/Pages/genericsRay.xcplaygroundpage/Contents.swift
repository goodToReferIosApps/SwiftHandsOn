//: [Previous](@previous)

import Foundation

// https://www.raywenderlich.com/154371/swift-generics-tutorial-getting-started


func addInts(a: Int, b: Int) -> Int {
    return a + b
}

addInts(a: 5, b: 3)

func addDoubles(a: Double, b: Double) -> Double {
    return a + b
}

addDoubles(a: 4, b: 5.7)


let numbers = [1, 2.8, 3, 4]
let firstNumbers = numbers[0]

var genericArray: Array<Int> = []
genericArray.append(1)
genericArray.append(2)

let countryCodes = ["illnoi" : "IL", "genovia": "GN"]
let countryCode = countryCodes["genovia"]

struct Queue<T> {
    fileprivate var elements: [T] = []
    
    mutating func enqueue(newElement: T) {
        elements.append(newElement)
    }
    
    mutating func dequeue() -> T? {
        guard !elements.isEmpty else {return nil}
        return elements.remove(at: 0)
    }
}

var q = Queue<Int>()
q.enqueue(newElement: 1)
q.enqueue(newElement: 4)


func pairs<key, value>(from dictionary:[key: value]) -> [(key, value)] {
    return Array(dictionary)
}

let somePairs = pairs(from: ["minimum": 199, "maximum": 299])
// result is [("maximum", 299), ("minimum", 199)]

let morePairs = pairs(from: [1: "Swift", 2: "Generics", 3: "Rule"])
// result is [(2, "Generics"), (3, "Rule"), (1, "Swift")]


func mid<T: Comparable>(array: [T]) -> T? {
    guard !array.isEmpty else {return nil}
    return array.sorted()[(array.count)/2]
}

mid(array: [3, 5, 1,2,4])


