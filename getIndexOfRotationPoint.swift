  //  Created by Pranit  Harekar on 6/15/17.
  //  Copyright © 2017 Pranit Harekar. All rights reserved.

  // Write a function for finding the index of the rotation point
  
   func getTheIndexOfTheRotationPoint(_ table: [Int]) -> Int{
        guard table.count > 0 else{
            return 0
        }
        for i in 1...table.count - 1 {
            if table[i] < table[i - 1]{
                print ("Rotation point is \(table[i]) at index \(i)")
                return i
            }
        }
        return 0
    }
