//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// https://www.raywenderlich.com/144083/swift-algorithm-club-swift-linked-list-data-structure

public class Node<Tr> {
    var value: Tr
    var nextNode: Node?
    weak var previousNode: Node?
    
    init(value: Tr) {
        self.value = value
    }
}


public class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    func isEmpty() -> Bool {
        return head == nil
    }
    
    
    func first() -> Node<T>? {
        return head
    }
    
    
    var last: Node<T>? {
        return tail
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail?.nextNode = newNode
            newNode.previousNode = tail
            tail = newNode
        }
    }
    
    func nodeAt(index: Int) -> Node<T>? {
        var node: Node<T>?
        if index >= 0 {
            var i = index
            node = head
            while node != nil {
                if i == 0 {
                    return node
                }
                node = node?.nextNode
                i -= 1
            }
            
        }
        return node
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node<T>) -> T {
        let prev = node.previousNode
        let next = node.nextNode
        
        if let prev = prev {
            // This would be middle node
            prev.nextNode = next
            next?.previousNode = prev
        } else {
            // This would be first node
            head = next
            next?.previousNode = nil
        }
        
        if let next = next {
            // This would be middle node
            prev?.nextNode = next
            next.previousNode = prev
        } else {
            // This would be last node
            tail = prev
            prev?.nextNode = nil
        }
        
        return node.value
    }
}


extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node?.nextNode
            if node != nil { text += " ,"}
        }
        
        return text + "]"
    }
    
    func  printForwardList() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.nextNode
        }
    }
    
    func  printBackwardList() {
        var currentNode = tail
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.previousNode
        }
    }
}

let linkedList = LinkedList<Int>()

linkedList.append(value: 1)
linkedList.append(value: 2)
linkedList.append(value: 3)
linkedList.append(value: 4)
linkedList.append(value: 5)


print("----------------------")
linkedList.printBackwardList()
linkedList.description
//linkedList.nodeAt(index: 2)?.value
//linkedList.remove(node: linkedList.nodeAt(index: 4)!)
//linkedList.printForwardList()
//linkedList.printBackwardList()

// ------------------------------------------------------------------
    // Queue implementation
    // https://www.raywenderlich.com/148141/swift-algorithm-club-swift-queue-data-structure
// ------------------------------------------------------------------


struct Queue<Element23> {
    var list = LinkedList<Element23>()
    
    func enqueue(_ element: Element23) {
        list.append(value: element)
    }
    
    func dequeue() -> Element23? {
        guard !list.isEmpty(), let first = list.first() else {return nil}
        list.remove(node: first)
        return first.value
    }
    
    func peek() -> Element23? {
        return list.first()?.value
    }
    
    func isEmpty() -> Bool {
        return list.isEmpty()
    }
}


extension Queue: CustomStringConvertible {
    // 2
    public var description: String {
        // 3
        return list.description
    }
}

var queue = Queue<String>()
queue.enqueue("a")
queue.enqueue("b")
queue.enqueue("c")

//queue.dequeue()

print(queue)



