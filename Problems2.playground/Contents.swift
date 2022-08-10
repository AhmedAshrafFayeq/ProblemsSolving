func maxSubArray(_ A: [Int]) -> Int {
    var tempMax = A.first
    var currentMax = tempMax
    
    for i in 1..<A.count {
        currentMax = max(A[i], currentMax ?? 0 + A[i])
        tempMax = max(tempMax ?? 0, currentMax ?? 0)
    }
    return tempMax ?? 0
}

print(maxSubArray([-2, -3, 4, -1, -2, 1, 5, -3]))
