func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result :[Int] = []
    var numSet2 = nums2
    for i in nums1 {
        if numSet2.contains(i){
            result.append(i)
            numSet2.remove(at: (numSet2.firstIndex(of: i)!))
            
        }
    }

    

    return result
}

var nums1 = [1,2]
var nums2 = [1,1]

intersect(nums1,nums2)
