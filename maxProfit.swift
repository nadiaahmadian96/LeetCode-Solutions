func maxProfit(_ prices: [Int]) -> Int {
    var maxprofit = 0
    for (i,e) in prices.enumerated(){
        if i>0{
            if e>prices[i-1]{
     
                maxprofit += e-prices[i-1]
            }
        }
    }
    return maxprofit;
}


var stock = [7,1,5,3,6,4]
maxProfit(stock)
