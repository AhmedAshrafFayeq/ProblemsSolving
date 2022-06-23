import UIKit

// 1 : 70 : 70

// 2 : 11 : 10


func secondsToHoursMinutesSeconds(_ seconds: Int) -> (Int, Int, Int) {
    var (hrs, mins, secs) = (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    hrs = hrs % 24
    return (hrs, mins, secs)
}

print(secondsToHoursMinutesSeconds(70 + 70 * 60 + 1 * 60 * 60))

//--------------------------------------------

func reverse(str: String) -> String {
    /// tempStr is intermidiate result
    let result = str.reduce("") { (tempStr, newChar) -> String in
        /// we are concatinating string in reverse order
        return "\(newChar)" + tempStr
    }
    return result
}

let str = "Ahmed Ashraf"
print("reversed: \(reverse(str: str))")

//--------------------------------------------

func uniqueValues(str: String) -> String {
   var unique = [Character]()
    for letter in str {
        if !unique.contains(letter) {
            unique.append(letter)
        }
    }
    return String(unique)
}

let strr = "Ahmad Ashraf"
print("unique: \(uniqueValues(str: strr))")

//--------------------------------------------

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...nums.count-1 {
            for j in i+1...nums.count-1 {
                if nums[j] == target-nums[i]{
                    return [i,j]
                }
            }
        }
        return [-1,-1]
    }
}

var solution = Solution()
print(solution.twoSum([1,2,3,4], 5))




