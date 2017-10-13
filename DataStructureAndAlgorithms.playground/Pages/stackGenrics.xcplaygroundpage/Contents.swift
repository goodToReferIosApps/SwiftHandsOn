//: [Previous](@previous)

import Foundation

class Node {
    var value: Int
    var nextNode: Node?
    
    init(value: Int) {
        self.value = value
    }
}

func printStack(topNode: Node?) {
    var currentNode = topNode
    while currentNode != nil {
        print("Print stack items: \(currentNode!.value)")
        currentNode = currentNode?.nextNode
    }
}


class Stack {
    var top: Node?
    
    func push(value: Int) {
        let newNode = Node(value: value)
        newNode.nextNode = top
        top = newNode
        //print("top node value: \(top!.value)")
    }
    
    func pop() -> Node? {
//        if top == nil {
//            return nil
//        }
        let topNode = top
        top = top?.nextNode
        return topNode
    }
    
    func peek() -> Node? {
        //print("Current value is : \(top?.value ?? -1)")
        return top
    }
}




let stack = Stack()
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)
//stack.push(value: 4)
//stack.push(value: 5)

printStack(topNode: stack.peek())

stack.pop()
stack.pop()
stack.pop()
stack.pop()

printStack(topNode: stack.peek())






