func rotate(_ nums: inout [Int], _ k: Int) {
    if !(nums.count == 1) && k != 0 {
        for _ in 0...k-1{
            nums.insert(nums[nums.count-1], at: 0)

            nums.remove(at: nums.count-1)

            
        }
    }
}


var array = [1,2]

rotate(&array, 0)
