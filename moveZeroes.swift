func moveZeroes(_ nums: inout [Int]) {
    var index = 0
    for i in nums{
        if i == 0{
            nums.insert(0, at: nums.count)
            nums.remove(at: nums.firstIndex(of: i)!)
        }
    }

}

var nums1=[0,0,1]
moveZeroes(&nums1)
