func removeDuplicates(_ nums: inout [Int]) -> Int {
    // Guard against empty input
    guard !nums.isEmpty else { return 0 }
    
    // Reduce the array while preserving order and removing duplicates
    nums = nums.reduce(into: []) { (result, num) in
        if !result.contains(num) {
            result.append(num)
        }
    }
    
    // Return the count of unique elements
    return nums.count
}
