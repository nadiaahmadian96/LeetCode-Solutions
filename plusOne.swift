func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var index = digits.count - 1
    
    while index >= 0 {
        if digits[index] < 9 {
            digits[index] += 1
            return digits
        }
        
        digits[index] = 0
        index -= 1
 
    }
    
    digits.insert(1, at: 0)
    return digits
}

var nums1=[7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7]


plusOne(nums1)
