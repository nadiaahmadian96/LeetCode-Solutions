import Foundation
func reverse(_ x: Int) -> Int {
    let lowerBound = -pow(2,31)
    let upperBound = pow(2,31)-1
    
    
    var x = String(x)
    if x.prefix(1) != "-"{
        x = String(x.reversed())
    }
    else{
        x.removeFirst()
        x = "-" + String(x.reversed())
    }
    
    if Decimal(Int(x)!)<lowerBound||Decimal(Int(x)!)>upperBound{
        return 0
    }else{
        return Int(x)!
    }
    
        
    
}
var x = 1534236469
reverse(x)
