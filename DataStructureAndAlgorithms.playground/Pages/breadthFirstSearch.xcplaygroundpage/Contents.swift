//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Breadth-First%20Search


//func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
//    var queue = Queue<Node>()
//    queue.enqueue(source)
//    
//    var nodesExplored = [source.label]
//    source.isVisited = true
//    
//    while let node = queue.dequeue() {
//        for edge in node.neighbors {
//            let neighborNode = edge
//            if !neighborNode.isVisited {
//                queue.enqueue(neighborNode)
//                neighborNode.isVisited = true
//                nodesExplored.append(neighborNode.label)
//            }
//        }
//    }
//    
//    return nodesExplored
//}


func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var queue = Queue<Node>()
    queue.enqueue(source)
    
    var nodesExplored = [source.label]
    source.isVisited = true
    while let node = queue.dequeue(){
        for edge in node.neighbors {
            if !edge.isVisited {
                queue.enqueue(edge)
                edge.isVisited = true
                nodesExplored.append(edge.label)
            }
        }
    }
    
    return nodesExplored
}


func depthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var nodesExplored = [source.label]
    source.isVisited = true
    
    for edge in source.neighbors {
        if !edge.isVisited {
            nodesExplored += depthFirstSearch(graph, source: edge)
        }
    }
    return nodesExplored
}

let graph = Graph()

let nodeA = graph.addNode("a")
let nodeB = graph.addNode("b")
let nodeC = graph.addNode("c")
let nodeD = graph.addNode("d")
let nodeE = graph.addNode("e")
let nodeF = graph.addNode("f")
let nodeG = graph.addNode("g")
let nodeH = graph.addNode("h")

graph.addEdge(nodeA, neighbor: nodeB)
graph.addEdge(nodeA, neighbor: nodeC)
graph.addEdge(nodeB, neighbor: nodeD)
graph.addEdge(nodeB, neighbor: nodeE)
graph.addEdge(nodeC, neighbor: nodeF)
graph.addEdge(nodeC, neighbor: nodeG)
graph.addEdge(nodeE, neighbor: nodeH)
graph.addEdge(nodeE, neighbor: nodeF)
graph.addEdge(nodeF, neighbor: nodeG)


//let nodesExploredBFS = breadthFirstSearch(graph, source: nodeA)
//print(nodesExploredBFS)

let nodesExploreDFS = depthFirstSearch(graph, source: nodeA)
print(nodesExploreDFS)




