import UIKit

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let aInt = Int("a".unicodeScalars.first!.value)
        var countArray = [Int](repeating: 0, count: 26)
        for c in s {
            countArray[Int(c.unicodeScalars.first!.value) - aInt] += 1
        }
        print(countArray)
        for c in t {
            countArray[Int(c.unicodeScalars.first!.value) - aInt] -= 1
        }
        print(countArray)
        for count in countArray {
            if count != 0 {
                return false
            }
        }
        return true
    }
}

Solution().isAnagram("anagram", "nagaram")
Solution().isAnagram("rat", "car")
Solution().isAnagram("a", "ab")
