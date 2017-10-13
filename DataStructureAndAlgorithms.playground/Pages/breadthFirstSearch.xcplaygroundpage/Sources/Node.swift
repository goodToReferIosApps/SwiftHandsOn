import Foundation

public class Node {
    public var label: String
    public var neighbors: [Node]
    public var isVisited: Bool
    
    public init(_ label: String) {
        self.label = label
        neighbors = []
        isVisited = false
    }
    
}
