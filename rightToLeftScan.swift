func replaceElements(_ arr: [Int]) -> [Int] {
    var arr = arr
    var maxRight = -1

    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        let current = arr[i]
        arr[i] = maxRight
        maxRight = max(maxRight, current)
    }

    return arr
}
