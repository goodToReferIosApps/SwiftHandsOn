//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// input linklist  1->2->3->nil
// output linklist 3->2->1->nil


class Node {
    let value: Int
    var nextNode: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.nextNode = next
    }
}

let nodeThree = Node(value: 3, next: nil)
let nodeTwo = Node(value: 2, next: nodeThree)
let nodeOne = Node(value: 1, next: nodeTwo)


func printList(head: Node?) {
    print("Printing out the list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.nextNode
    }
}

printList(head: nodeOne)

// input linklist  1->2->3->nil
// output linklist 3->2->1->nil

func reverseList(head: Node?) -> Node? {
    var next: Node?
    var prev: Node?
    
    var currentNode = head
    while currentNode != nil {
        next = currentNode?.nextNode
        currentNode?.nextNode = prev
        prev = currentNode
        currentNode = next
    }
    
    return prev
}


printList(head: reverseList(head: nodeOne))








