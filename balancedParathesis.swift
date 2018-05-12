
//  Created by Pranit  Harekar on 6/15/17.
//  Copyright © 2017 Pranit Harekar. All rights reserved.

// Write a function to check if the parathesis are balanced

func balancedParathesis(_ str : String) -> Bool{
        let charSet = Array(str.characters)
        var buffer = [Int]()
        for c in charSet {
            if c == "(" {
               buffer.append(charSet.index(of: c)!)
            }
            if c == ")" {
                if !buffer.isEmpty {
                    buffer.removeLast()
                } else {
                    return false
                }
            }

        }
        return buffer.isEmpty
    }
