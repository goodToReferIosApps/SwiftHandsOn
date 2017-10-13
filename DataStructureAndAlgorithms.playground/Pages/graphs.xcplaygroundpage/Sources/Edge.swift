import Foundation

enum EdgeType {
    case directed, undirected
}


struct Edge<T: Hashable> {
    var source: Vertex<T>
    var destination: Vertex<T>
    let weight: Double?
}

extension Edge: Hashable {
    public var hashValue: Int {
        return "\(source)\(destination)\(weight)".hashValue
    }
    
    static public func ==(lhs: Edge<T>, rhs: Edge<T>) -> Bool {
        return lhs.source == rhs.source &&
        lhs.destination == rhs.destination &&
        lhs.weight == rhs.weight
    }
}
