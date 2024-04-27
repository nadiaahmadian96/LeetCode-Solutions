    func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let k = k % n  // Normalize k to prevent unnecessary full rotations

    // Guard against rotating by the array's length
    guard k != 0 else { return }

    // Create a slice of the last k elements and the rest of the elements
    let lastK = nums[(n-k)...]
    let firstPart = nums[..<(n-k)]

    // Concatenate the slices in reverse order
    nums = Array(lastK + firstPart)
}
