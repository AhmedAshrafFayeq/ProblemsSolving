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

let strrrr = "aHmEd AhMeD"

print("unique: \(uniqueValues(str: strrrr))")

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

//--------------------------------------------
        //Factorial in Recursion//

func factorial(_ val: Int) -> Int {
    if val == 0 {
        return 1
    }
    return val * factorial(val - 1)
}

print("Fact = \(factorial(5))")

//--------------------------------------------
        //Divisior = take integer and return the sum of all its diversor//

func divisorSum(number: Int) -> Int {
    var sum = number
    var div = number / 2
    while(div > 0) {
        if number % div == 0 {
            sum += div
        }
        div -= 1
    }
    return sum
}

print("divSum of 6 = \(divisorSum(number: 6))")


//--------------------------------------------
        //Find Maximum Binary Tree Depth//

final class TreeNode {
    var val: Int
    var rightNode: TreeNode?
    var leftNode: TreeNode?
    
    init(val: Int) {
        self.val = val
        rightNode = nil
        leftNode = nil
    }
}


final class MaximumDepthCalculator {
    static func calculate(_ node: TreeNode?) -> Int {
        guard let rootNode = node else {
            return 0
        }
        let leftSideNodeDepth = calculate(rootNode.leftNode) + 1
        let rightSideNodeDepth = calculate(rootNode.rightNode) + 1
        print("\(leftSideNodeDepth)  \(rightSideNodeDepth)")
        return max(leftSideNodeDepth, rightSideNodeDepth)
    }
}

let rootNode                    = TreeNode(val: 3)
rootNode.rightNode              = TreeNode(val: 9)
rootNode.rightNode?.rightNode   = TreeNode(val: 20)
rootNode.leftNode               = TreeNode(val: 5)
rootNode.leftNode?.leftNode     = TreeNode(val: 10)
rootNode.leftNode?.rightNode    = TreeNode(val: 100)
rootNode.leftNode?.rightNode?.rightNode = TreeNode(val: 100)

print(MaximumDepthCalculator.calculate(rootNode))


//--------------------------------------------
        //Invert Binary Tree//

final class InvertBinaryTree {
    static func invert(_ node: TreeNode?) -> TreeNode? {
        guard let node = node else {
            return nil
        }
        let leftSideNode = invert(node.leftNode)
        let rightSideNode = invert(node.rightNode)
        
        node.leftNode = rightSideNode
        node.rightNode = leftSideNode
        
        return node
    }
}

//           4
//         /   \
//       2       7
//     /   \    /  \
//   1     3   6    9


// OUTPUT:

//           4
//         /   \
//       7       2
//     /   \    /  \
//   9     6   3    1



let binaryRootNode                    = TreeNode(val: 4)
binaryRootNode.rightNode              = TreeNode(val: 7)
binaryRootNode.rightNode?.rightNode   = TreeNode(val: 9)
binaryRootNode.rightNode?.leftNode    = TreeNode(val: 6)
binaryRootNode.leftNode               = TreeNode(val: 2)
binaryRootNode.leftNode?.leftNode     = TreeNode(val: 1)
binaryRootNode.leftNode?.rightNode    = TreeNode(val: 3)

var invertBinarryTree = InvertBinaryTree.invert(binaryRootNode)!

print("binaryRootNode:                      \(invertBinarryTree.val)")
print("binaryRootNode.rightNode:            \(invertBinarryTree.rightNode?.val ?? 0)")
print("binaryRootNode.rightNode?.rightNode: \(invertBinarryTree.rightNode?.rightNode?.val ?? 0)")
print("binaryRootNode.rightNode?.leftNode:  \(invertBinarryTree.rightNode?.leftNode?.val ?? 0)")
print("binaryRootNode.leftNode:             \(invertBinarryTree.leftNode?.val ?? 0)")
print("binaryRootNode.leftNode?.leftNode:   \(invertBinarryTree.leftNode?.leftNode?.val ?? 0)")
print("binaryRootNode.leftNode?.rightNode:  \(invertBinarryTree.leftNode?.rightNode?.val ?? 0)")


//--------------------------------------------
        //Reverse LinkedList//

final class LinkedNode {
    var val: Int
    var next: LinkedNode?
    
    init(val: Int) {
        self.val = val
    }
}

final class ReversedLinkedList {
    
    static func reverse(_ node: LinkedNode?) -> LinkedNode? {
        guard let node = node else {
            return nil
        }
        
        var nextNode = node.next
        var currentNode = LinkedNode(val: node.val)
        
        while nextNode != nil {
            let newNode = LinkedNode(val: nextNode!.val)
            newNode.next = currentNode
            currentNode = newNode
            nextNode = nextNode?.next
        }
        return currentNode
    }
}


var linkedNode = LinkedNode(val: 1)
linkedNode.next = LinkedNode(val: 2)
linkedNode.next?.next = LinkedNode(val: 3)
linkedNode.next?.next?.next = LinkedNode(val: 4)
linkedNode.next?.next?.next?.next = LinkedNode(val: 5)

let reversedLinkedNode = ReversedLinkedList.reverse(linkedNode)
print("root node \(reversedLinkedNode?.val ?? 0)")
print("root node \(reversedLinkedNode?.next?.val ?? 0)")
print("root node \(reversedLinkedNode?.next?.next?.val ?? 0)")
print("root node \(reversedLinkedNode?.next?.next?.next?.val ?? 0)")
print("root node \(reversedLinkedNode?.next?.next?.next?.next?.val ?? 0)")


