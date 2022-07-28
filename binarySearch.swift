class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var res = -1
        for i in nums {
            if i == target {
                res =  nums.firstIndex(of : target) 
            }
        }
        return res
    }
}
