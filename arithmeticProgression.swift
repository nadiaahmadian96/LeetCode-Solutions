/* A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.

Given an array of numbers arr, return true if the array can be rearranged to form an arithmetic progression. Otherwise, return false. */

final class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        let n = arr.count
        if n <= 2 { return true }

        var minVal = arr[0]
        var maxVal = arr[0]
        for x in arr {
            if x < minVal { minVal = x }
            if x > maxVal { maxVal = x }
        }

        let span = maxVal - minVal
        let steps = n - 1

        // All equal numbers => valid AP (difference 0)
        if span == 0 { return true }

        // Must divide evenly to get an integer common difference
        if span % steps != 0 { return false }
        let d = span / steps

        let setArr = Set(arr)

        // If d != 0, duplicates mean two numbers would map to same position -> impossible
        if setArr.count != n { return false }

        for k in 0..<n {
            let expected = minVal + k * d
            if !setArr.contains(expected) { return false }
        }

        return true
    }
}

 
