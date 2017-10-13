//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
// https://www.raywenderlich.com/112027/reference-value-types-in-swift-part-1

class Dog {
    var wasFed = false
}

let dog = Dog()
let puppy = dog

puppy.wasFed = true

dog.wasFed

struct Cat {
    var wasFed = false
}

var cat = Cat()

let pussy = cat
cat.wasFed = true

cat.wasFed
pussy.wasFed

//********************************************
// https://www.raywenderlich.com/112029/reference-value-types-in-swift-part-2


struct Address {
    var streetAddress: String
    var city: String
    var state: String
    var postalCode: String
    
//    init(streetAddress: String, city: String, state: String, postalCode: String) {
//        self.streetAddress = streetAddress
//        self.city = city
//        self.state = state
//        self.postalCode = postalCode
//    }
}

class Person {
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}

let kingsLanding = Address(streetAddress: "cosmos", city: "pune", state: "Maharasthra", postalCode: "60110")

let nilikh = Person(name: "Nilikh", address: kingsLanding)
let nitish = Person(name: "Nitish", address: kingsLanding)


nitish.address.streetAddress = "heliconia"

nilikh.address.streetAddress
nitish.address.streetAddress
















