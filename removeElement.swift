    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // Directly remove all elements equal to 'target'
    nums.removeAll { $0 == val }
    
    // Return the new length of the array
    return nums.count
    }
