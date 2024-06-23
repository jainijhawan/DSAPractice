//: [Previous](@previous)

/*1. Two Sum
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
  

 Constraints:

 2 <= nums.length <= 104
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 Only one valid answer exists.
  

 Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?*/

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer = [Int]()
        var frequencyDict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let compliment = target - num
            
            if let complimentIndex = frequencyDict[compliment] {
                answer.append(complimentIndex)
                answer.append(index)
            } else {
                frequencyDict[num] = index
            }
        }
        return answer
    }
}

let solution = Solution()
// Test case 1
let nums1 = [2, 7, 11, 15]
let target1 = 9
print(solution.twoSum(nums1, target1)) // Output: [0, 1]

// Test case 2
let nums2 = [3, 2, 4]
let target2 = 6
print(solution.twoSum(nums2, target2)) // Output: [1, 2]

// Test case 3
let nums3 = [3, 3]
let target3 = 6
print(solution.twoSum(nums3, target3)) // Output: [0, 1]


//: [Next](@next)
