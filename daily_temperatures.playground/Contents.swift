import UIKit

class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        var temperatureArray = [[Int]]()
        var resultArray = [Int](repeating: 0, count: T.count)
        for (i, t) in T.enumerated() {
            while temperatureArray.count > 0 && t > temperatureArray.last!.last! {
                resultArray[temperatureArray.last!.first!] = i - temperatureArray.last!.first!
                temperatureArray.removeLast()
            }
            temperatureArray.append([i, t])
        }
        return resultArray
    }
}

print(Solution().dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]))
