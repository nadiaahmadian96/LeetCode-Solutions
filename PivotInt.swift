/*Given a positive integer n, find the pivot integer x such that:

The sum of all elements between 1 and x inclusively equals the sum of all elements between x and n inclusively.
Return the pivot integer x. If no such integer exists, return -1. It is guaranteed that there will be at most one pivot index for the given input. */

final class Solution {
    func pivotInteger(_ n: Int) -> Int {
        let nn = Int64(n)
        let sum = nn * (nn + 1) / 2   // S

        // Integer sqrt via Double, then verify by squaring (safe for typical constraints)
        let r = Int64(Double(sum).squareRoot())
        if r * r == sum {
            return Int(r)
        }
        return -1
    }
}

/* We need:
	•	sum(1..x) = sum(x..n)
	•	x(x+1)/2 = S - (x-1)x/2
This simplifies to:
	•	x^2 = S

So the pivot exists iff S is a perfect square, and then x = sqrt(S). */

