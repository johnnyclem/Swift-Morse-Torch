//
//  MorseCode.swift
//  Swift Morse Torch
//
//  Created by John Clem on 6/11/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class MorseCode: NSObject {
    let symbols = [
        "a" : ".-",
        "b" : "-...",
        "c" : "-.-.",
        "d" : "-..",
        "e" : ".",
        "f" : "..-.",
        "g" : "--.",
        "h" : "....",
        "i" : "..",
        "j" : ".---",
        "k" : "-.-",
        "l" : ".-..",
        "m" : "--",
        "n" : "-.",
        "o" : "---",
        "p" : ".--.",
        "q" : "--.-",
        "r" : ".-.",
        "s" : "...",
        "t" : "-",
        "u" : "..-",
        "v" : "...-",
        "w" : ".--",
        "x" : "-..-",
        "y" : "-.--",
        "z" : "--..",
        "1" : ".----",
        "2" : "..---",
        "3" : "...--",
        "4" : "....-",
        "5" : ".....",
        "6" : "-....",
        "7" : "--...",
        "8" : "---..",
        "9" : "----.",
        "0" : "-----",
        " " : " "
    ]
}

extension String {
    
    func symbolForLetter() -> String {
        if let symbol = MorseCode().symbols[self.lowercaseString.substringToIndex(1)] {
            return symbol
        } else {
            return " "
        }
    }

}
