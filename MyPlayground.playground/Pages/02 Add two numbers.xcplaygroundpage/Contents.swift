
/*
 2. Add Two Numbers
 Solved
 Medium
 Topics
 Companies
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

  

 Example 1:


 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
 Example 2:

 Input: l1 = [0], l2 = [0]
 Output: [0]
 Example 3:

 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]*/
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummyHead = ListNode()  // refernece of the first node
        var current = dummyHead // node to operate with
        var carry = 0
        var l1 = l1
        var l2 = l2
        
        while l1 != nil || l2 != nil {
            
            let value1 = l1?.val ?? 0
            let value2 = l2?.val ?? 0
            
            let sum = value1 + value2 + carry
            let remainder = sum%10
            
            current.next = ListNode(remainder)
            current = current.next!
            
            carry = sum/10
            
            l1 = l1?.next
            l2 = l2?.next
        }
        
        if carry > 0 {
            current.next = ListNode(carry)
        }
        
        return dummyHead.next
    }
}

// Creating first linked list: 2 -> 4 -> 3
let l1 = ListNode(2)
l1.next = ListNode(4)
l1.next?.next = ListNode(3)

// Creating second linked list: 5 -> 6 -> 4
let l2 = ListNode(5)
l2.next = ListNode(6)
l2.next?.next = ListNode(4)

let solution = Solution()
//if let result = solution.addTwoNumbers(l1, l2) {
//    var current = result
//    while current != nil {
//        print(current.val) // Output: 7 -> 0 -> 8
//        current = current.next!
//    }
//}
