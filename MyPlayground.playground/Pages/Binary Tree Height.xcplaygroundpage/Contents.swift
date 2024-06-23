//: [Previous](@previous)

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

//print("Binary Tree Height: \(tree.getHeight(root: root))")

//: [Next](@next)
