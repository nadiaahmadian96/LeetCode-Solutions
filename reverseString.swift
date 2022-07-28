func reverseString(_ s: inout [Character]) {
    for c in s{
        s.insert(c, at: 0)
        s.removeLast()
    }
}
var array :[Character] =  ["h","e","l","l","o"]
reverseString(&array)
