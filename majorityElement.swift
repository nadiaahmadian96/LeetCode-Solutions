func majorityElement(_ nums: [Int]) -> Int {
    var count = 0
    var candidate: Int?

    for num in nums {
        if count == 0 {
            candidate = num
        }
        count += (num == candidate) ? 1 : -1
    }

    // Optional: Validation pass to confirm the candidate is actually the majority element
    // This is usually needed if the array might not have a majority element, but as per the problem,
    // the majority element always exists, so we can skip this check.
    return candidate!
}
