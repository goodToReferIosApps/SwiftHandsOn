import Foundation

struct Vertex<T: Hashable> {
    var data: T
}

extension Vertex: Hashable {
    var hashValue: Int {
        return data.hashValue
    }
    
    public static func ==(lhs: Vertex  , rhs: Vertex) -> Bool {
        return lhs.data == rhs.data
    }
}

extension Vertex: CustomStringConvertible {
    public var description: String {
        return "\(data)"
    }
}
