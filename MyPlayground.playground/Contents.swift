import UIKit

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
//print("Element \(targetElement) found at index \(String(describing: index))")

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

//print("Merge Sorted Array = \(mergeSort(arr: unsortedArray))")\

import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d: Int) {
        data = d
    }
}

class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func getHeight(root: Node?) -> Int {
        // Base case: if the tree is empty, the height is 0
        if root == nil {
            return -1
        }

        // Recursively calculate the height of the left and right subtrees
        let leftHeight = getHeight(root: root?.left)
        let rightHeight = getHeight(root: root?.right)

        // The height of the tree is the greater of the two subtree heights
        return max(leftHeight, rightHeight) + 1
    }
}

// Sample usage
let tree = Tree()
var root: Node? = nil
let nodes = [3, 5, 2, 1, 4, 6, 7]

for value in nodes {
    root = tree.insert(root: root, data: value)
}

print("Binary Tree Height: \(tree.getHeight(root: root))")
