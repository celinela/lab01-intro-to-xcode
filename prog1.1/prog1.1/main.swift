//
//  main.swift
//  prog1.1
//
//  Created by Celine Ah Kit on 7/11/18.
//  Copyright © 2018 Celine Ahkit. All rights reserved.
//

import Foundation

func emojicode(word: String) -> String {
    //Converts the characters in the string to lowercase and checks for the emoji match
    switch word.lowercased() {
    case "beer":
        return "\u{1F37A}"
        
    case "television", "tv":
        return "\u{1F4FA}"
    
    //default occurs when no other cases match
    default:
        return word
    }
}

func emojiate(str: String) -> String {
    //Breaks the string into separate word tokens
    var word: String = ""
    var result: String = ""
    
    for char: Character in str {
        if(String(char) >= "A" && String(char) <= "z"){
            word.append(char) //if the character is a letter, add it to the word token
        }else{
            result += emojicode(word: word) //if not a letter, convert the last word token to a emoji and add it to the string. += concatenates the string
            result.append(char)
            word = "" //clear the word token
        }
    }
    
    result += emojicode(word: word)
    return result
}

let myString = "No TV and no beer make Homer something something."
let emojiString = emojiate(str: myString);

print(emojiString)

//end of program
    
    


