func containsDuplicate(_ nums: [Int]) -> Bool {
    var items = nums
    var containsDuplicate = false
    for (index,item) in items.enumerated(){
        var item = item
        items.remove(at: 0)
        if items.contains(item){
            containsDuplicate = true        }
        
    }
    return containsDuplicate
}


var array = [1,1,1,3,3,4,3,2,4,2]

containsDuplicate(array)
