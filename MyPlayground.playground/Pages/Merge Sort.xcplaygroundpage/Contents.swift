//: [Previous](@previous)

import Foundation

let unsortedArray = [3,5,8,0,1,3,5,2,6,7,9]

func mergeSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    let middle = arr.count / 2
    let leftArray = Array(arr[0..<middle])
    let rightArray = Array(arr[middle..<arr.count])
    
    let sortedLeftArray = mergeSort(arr: leftArray)
    let sortedRightArray = mergeSort(arr: rightArray)

    return divideAndMerge(left: sortedLeftArray, right: sortedRightArray)
}

func divideAndMerge(left: [Int], right: [Int]) -> [Int] {
    var answer: [Int] = []
    
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex<left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            answer.append(left[leftIndex])
            leftIndex += 1
        } else {
            answer.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex<left.count {
        answer.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex<right.count {
        answer.append(right[rightIndex])
        rightIndex += 1
    }
    
    return answer
}

print("Merge Sorted Array = \(mergeSort(arr: unsortedArray))")\
//: [Next](@next)
