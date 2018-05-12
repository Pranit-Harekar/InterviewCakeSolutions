
//  Created by Pranit  Harekar on 6/15/17.
//  Copyright © 2017 Pranit Harekar. All rights reserved.

// Write an efficient function that checks whether any permutation of an input string is a palindrome

    
func permPalindrome(_ str: String) -> Bool {
    var charset = Set<Character>()
    
    for c in str {
        if charset.contains(c) {
            charset.remove(c)
        } else {
            charset.insert(c)
        }
    }
    
    return charset.count <= 1
}
