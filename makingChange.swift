    
    //  Created by Pranit  Harekar on 6/15/17.
    //  Copyright © 2017 Pranit Harekar. All rights reserved.
    
    // Write a function that, given:
    // 1. an amount of money
    // 2. an array of coin denominations
    // computes the number of ways to make the amount of money with coins of the available denominations.
      
    func getNumberOfPossibleWays(_ table: [Int], _ count: Int, _ total: Int) -> Int {
        
        if total == 0 { return 1 }
        if total < 0 { return 0 }
    
        if count <= 0 && total >= 1{
            return 0
        }
        return getNumberOfPossibleWays(table, count - 1, total) + getNumberOfPossibleWays (table , count, total - table[count - 1])
    }
    
