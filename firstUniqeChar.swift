func firstUniqeChar(_ s: String) -> Int {
    var s = Array(s)
    var res = -1
    for c in s{
        if s.firstIndex(of: c) == s.lastIndex(of: c){
            res = s.firstIndex(of: c)!
            break
        }
        
    }
    return res
}
var x = "ababc"
firstUniqeChar(x)
