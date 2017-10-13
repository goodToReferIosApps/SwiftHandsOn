import Foundation

public class Graph {
    var nodes: [Node]
    
    public init() {
        self.nodes = []
    }
    
    public func addNode(_ label: String) -> Node {
        let node = Node(label)
        nodes.append(node)
        return node
    }
    
    public func addEdge(_ sourceNode: Node, neighbor: Node) {
        sourceNode.neighbors.append(neighbor)
    }
}
