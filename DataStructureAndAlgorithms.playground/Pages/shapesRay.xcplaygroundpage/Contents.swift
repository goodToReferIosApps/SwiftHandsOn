//: [Previous](@previous)

import Foundation

// https://www.raywenderlich.com/119881/enums-structs-and-classes-in-swift

enum ColorName: String {
    case black
    case silver
    case grey
    case white
}

// or
enum ColorName2: String {
    case black, silver, grey, white
}



enum CSSColor {
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}


extension CSSColor {
    var description: String {
        switch self {
            case .named(let colorName):
                return colorName.rawValue
            case.rgb(let r, let g, let b):
                return String(format: "#%02X%02X%02X", r, g, b)
        }
    }
}


extension CSSColor {
    init(grayScale: UInt8) {
        self = .rgb(grayScale, grayScale, grayScale)
    }
}



let color1 = CSSColor.named(.black)
let color2 = CSSColor.rgb(10, 101, 100)
let color3 = CSSColor(grayScale: 200)


color1.description
color2.description
color3.description

enum Math {
   static var phi = 12121212
}

Math.phi = 3343434

let temp = Math.phi

// ***************************************************
// https://www.raywenderlich.com/119881/enums-structs-and-classes-in-swift

// Using Structs

protocol Drawable {
    func draw(with context: DrawingContext)
}

protocol DrawingContext {
    func draw(_ circle: Circle)
    func draw(_ rectangle: Rectangle)
}

struct Circle: Drawable {
    var strokeWidth = 5
    var strokeColor = CSSColor.named(.black)
    var fillColor = CSSColor.named(.silver)
    var center = (x: 80.0, y: 160.0)
    var radius = 60.0
    
    func draw(with context: DrawingContext) {
        context.draw(self)
    }
}

struct Rectangle : Drawable {
    var strokeWidth = 5
    var strokeColor = CSSColor.named(.silver)
    var fillColor = CSSColor.named(.grey)
    var origin = (x: 110.0, y: 10.0)
    var size = (width: 100.0, height: 130.0)
    
    func draw(with context: DrawingContext) {
        context.draw(self)
    }
}











