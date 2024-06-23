//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

func binarySearch(arr: [Int], target: Int) -> Int? {
    var left = 0
    var right = arr.count - 1
    while left <= right {
        let middle = left + (right - left) / 2
        
        if arr[middle] == target {
            return middle
        } else if arr[middle] < target {
            left = middle + 1
        } else {
            right = middle - 1
        }
    }
    return nil
}

// Test example:
let sortedArray = [1, 3, 5, 7, 9, 11, 13, 15, 17]
let targetElement = 99
let index = binarySearch(arr: sortedArray, target: targetElement)
print("Element \(targetElement) found at index \(String(describing: index))")




//: [Next](@next)
