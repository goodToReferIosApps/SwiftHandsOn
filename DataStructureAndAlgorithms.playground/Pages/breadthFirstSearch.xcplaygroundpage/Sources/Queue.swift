import Foundation

public class Queue<T> {
    
    private var array: [T]
    
    public init() {
        array = []
    }
    
    public func enqueue(_ element: T) {
        array.append(element)
    }
    
    public func dequeue() -> T? {
        guard !array.isEmpty else {return nil}
        return array.removeFirst()
    }
    
    public func peek() -> T? {
        return array.first
    }
}
