import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var cArray = [Character]()
        for c in s {
            if cArray.count > 0 {
                if isPair(c1: cArray.last!, c2: c) {
                    cArray.removeLast()
                }else {
                    cArray.append(c)
                }
            }else {
                cArray.append(c)
            }
        }
        return cArray.isEmpty
    }
    
    func isPair(c1 : Character, c2 : Character) -> Bool {
        return (c1 == "(" && c2 == ")")
        || (c1 == "[" && c2 == "]")
        || (c1 == "{" && c2 == "}")

    }
}

print(Solution().isValid("()"))
print(Solution().isValid("()[]{}"))
print(Solution().isValid("(]"))
print(Solution().isValid("([)]"))
print(Solution().isValid("{[]}"))
