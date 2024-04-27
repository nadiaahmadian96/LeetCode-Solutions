import UIKit

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = Array(nums1.prefix(m))
    nums1.append(contentsOf: nums2)
    nums1.sort()
}
