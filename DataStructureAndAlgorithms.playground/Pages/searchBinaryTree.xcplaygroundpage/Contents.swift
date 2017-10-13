//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//         10
//       /    \
//      5     14
//    /      /   \
//    1     11   20


class Node {
    let value: Int
    var leftNode: Node?
    var rightNode: Node?
    
    init(value: Int, leftNode: Node?, rightNode: Node?) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}



let nodeTwenty = Node(value: 20, leftNode: nil, rightNode: nil)
let nodeEleven = Node(value: 11, leftNode: nil, rightNode: nil)
let nodeFourteen = Node(value: 14, leftNode: nodeEleven, rightNode: nodeTwenty)

let nodeOne = Node(value: 1, leftNode: nil, rightNode: nil)
let nodeFive = Node(value: 5, leftNode: nodeOne, rightNode: nil)
let nodeTen = Node(value: 10, leftNode: nodeFive, rightNode: nodeFourteen)


func search(node: Node?, searchValue: Int) -> Bool {
    if node == nil {
        return false
    }
    if node!.value == searchValue {
        return true
    } else if searchValue < node!.value {
        return search(node: node!.leftNode, searchValue: searchValue)
    } else {
        return search(node: node?.rightNode, searchValue: searchValue)
    }
}

//         10
//       /    \
//      5     14
//    /      /   \
//    1     11   20

search(node: nodeTen, searchValue: 2)