//: [Previous](@previous)

import Foundation

// https://www.raywenderlich.com/154256/swift-algorithm-club-swift-merge-sort
// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Merge%20Sort


func merge<T: Comparable>(leftArray: [T], rightArray: [T]) -> [T] {
    print("Left array: \(leftArray)...... right array: \(rightArray)\n")
    var sortedArray = [T]()
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else if leftArray[leftIndex] > rightArray[rightIndex] {
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    
    return sortedArray + leftArray[leftIndex ..< leftArray.count] + rightArray[rightIndex ..< rightArray.count]
}


func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    
    print("base array \(array)")
    guard array.count > 1 else {return array}
    
    let middleIndex = array.count/2
    
    let letfArray = mergeSort(Array(array[0 ..< middleIndex]))
    
    let rightArray = mergeSort(Array(array[middleIndex ..< array.count]))
   
    return merge(leftArray: letfArray, rightArray: rightArray)
}

print(mergeSort([4,2,-51,8,55]))

