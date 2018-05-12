
func getMaxProfit(from stockPrices: [Int]) -> Int {
    
    guard stockPrices.count > 2 else {
        print("Minimum two values are required to calculate the profit")
        return 0 //TODO:- We can do better by throwing an error
    }
    
    var minPrice = stockPrices[0]
    var maxProfit = stockPrices[1] - stockPrices[0]
    
    for i in 1..<stockPrices.count {
        let currentPrice = stockPrices[i]
        let potentialProfit = currentPrice - minPrice
        
        maxProfit = max(maxProfit, potentialProfit)
        minPrice = min(currentPrice, minPrice)
    }
    return maxProfit
}

let result = getMaxProfit(from: [10, 7, 5, 8, 11, 9]) // result = 6
