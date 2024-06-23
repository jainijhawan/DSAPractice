//: [Previous](@previous)

import Foundation

/*3. Longest Substring Without Repeating Characters
 Solved
 Medium
 Topics
 Companies
 Hint
 Given a string s, find the length of the longest
 substring
  without repeating characters.

  

 Example 1:

 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
*/

func lengthOfLongestSubstring(_ s: String) -> Int {
    var s = Array(s)
    var maxLength = 0
    
    var setOfChars: Set<Character> = []
    var aPointer = 0
    var bPointer = 0
    
    while bPointer != s.count {
        if setOfChars.contains(s[bPointer]) {
            setOfChars.remove(s[aPointer])
            aPointer += 1
        } else {
            setOfChars.insert(s[bPointer])
            bPointer += 1
            maxLength = max(maxLength, setOfChars.count)
        }
    }
    
    return maxLength
}

//print(lengthOfLongestSubstring("abcabcbb")) // Output: 3
//print(lengthOfLongestSubstring("bbbbb"))    // Output: 1
//print(lengthOfLongestSubstring("pwwkew"))   // Output: 3
//: [Next](@next)
