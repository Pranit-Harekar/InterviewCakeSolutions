
//  Created by Pranit  Harekar on 6/15/17.
//  Copyright © 2017 Pranit Harekar. All rights reserved.

// Write a function that, given a sentence like the one above, along with the position of 
// an opening parenthesis, finds the corresponding closing parenthesis.


 func parathesisMatching(_ str : String, _ pindex : Int) -> Int{

        let charSet = Array(str.characters)
        var buffer = [Int]()
        
        for c in 0...charSet.count - 1 {
            if charSet[c] == "("{
                buffer.append(c)
            }
            if charSet[c] == ")" {
                if !buffer.isEmpty{
                    if buffer.last == pindex{
                        return c
                    }
                    buffer.removeLast()
                }else{
                    return -1
                }
            }
        }
        return -1
        
    }
