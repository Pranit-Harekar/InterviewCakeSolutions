//  Created by Pranit  Harekar on 6/15/17.
//  Copyright © 2017 Pranit Harekar. All rights reserved.

// MyPlayground.swift

// You have an array of integers, and for each index you want to find the product of every integer 
// except the integer at that index. 



func getProductsOfAllIntsExceptAtIndex(table: [Int]) -> [Int] {
        guard table.count > 0 else {
            return []
        }
        var result: [Int] = []
        var preMultiplication = 1
        var postMultiplication = 1
        for value in table {
            result.append(preMultiplication)
            preMultiplication *= value
        }
        
        for index in (0...table.count - 1).reversed() {
            result[index] *= postMultiplication
            postMultiplication *= table[index]
        }
        
        return result
    }
