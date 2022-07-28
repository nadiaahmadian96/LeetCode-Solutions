func singleNumber(_ nums: [Int]) -> Int {
    var number = 0
    if nums.count == 1 {
        return nums[0]
    }else{
        for i in nums{
            number ^= i
        }
    }
    return number
}


var array = [4,1,2,1,2]

singleNumber(array)
