//  Created by Pranit  Harekar on 6/15/17.
//  Copyright © 2017 Pranit Harekar. All rights reserved.

// Given an array of integers, find the highest product you can get from three of the integers.

    public func getMaxOfTriplet(_ arg: [Int]) -> Int {
        // write the body of your function here
        let index = arg.count
        guard arg.count >= 3 else{
            return 0
        }
        var sortedArray = arg.sorted(by: < )
        
        print(sortedArray[index-1])
        
        let pro1 = sortedArray[0] * sortedArray[1] * sortedArray[4]
        let pro2 = sortedArray[index - 1] * sortedArray[index - 2] * sortedArray[index - 3]
        return getMax(pro1,pro2)
    }
