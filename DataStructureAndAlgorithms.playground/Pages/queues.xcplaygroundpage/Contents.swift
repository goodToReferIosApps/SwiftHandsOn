//: [Previous](@previous)

import Foundation

class Node {
    var value: Int
    var nextNode: Node?
    
    init(value: Int) {
        self.value = value
    }
}


class Queue {
    
    var head: Node?
    var tail: Node?
    
    func enqueue(value: Int) {
        let newNode = Node(value: value)
        // Updating head pointer
        if head == nil {
            head = newNode
        }
        
        // Updating tail pointer
        tail?.nextNode = newNode
        tail = newNode
    }
    
    func dequeue() -> Int? {
        let headNode = head
        if headNode === tail {
            tail = nil
        }
        head = headNode?.nextNode
        return headNode?.value
    }
    
    func peekHead() -> Node? {
        print("Head is: \(head?.value ?? -1)")
        print("Tail is: \(tail?.value ?? -1)")
        return head
    }
    
}

extension Queue {
    func printQueue() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.nextNode
        }
    }
}


//func printQueue(head: Node) {
//    var currentNode: Node? = head
//    while currentNode != nil {
//        print(currentNode?.value ?? -1)
//        currentNode = currentNode?.nextNode
//    }
//}


let queue = Queue()
queue.enqueue(value: 1)
queue.enqueue(value: 2)
queue.enqueue(value: 3)
queue.enqueue(value: 4)

queue.dequeue()
queue.dequeue()


queue.enqueue(value: 5)
//queue.dequeue()
//queue.dequeue()
//queue.dequeue()
//queue.dequeue()
//queue.dequeue()



//printQueue(head: queue.peekHead())
queue.printQueue()

