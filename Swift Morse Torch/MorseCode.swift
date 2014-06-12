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
        ".-" : "A",
        "-..." : "B",
        "-.-." : "C",
        "-.." : "D",
        "." : "E",
        "..-." : "F",
        "--." : "G",
        "...." : "H",
        ".." : "I",
        ".---" : "J",
        "-.-" : "K",
        ".-.." : "L",
        "--" : "M",
        "-." : "N",
        "---" : "O",
        ".--." : "P",
        "--.-" : "Q",
        ".-." : "R",
        "..." : "S",
        "-" : "T",
        "..-" : "U",
        "...-" : "V",
        ".--" : "W",
        "-..-" : "X",
        "-.--" : "Y",
        "--.." : "Z",
        "BREAK" : " ",
        "STOP" : "."
    ]
}

extension String {
    
    func morseArrayFromString(message : String!) -> Array<String> {
        let upcaseMessage = message.uppercaseString
        let morseArray = Array<String>()
        let morseDict = MorseCode().symbols
        
        for character in upcaseMessage {
            let morseString = String() + character
            if let morseValue : String = morseDict[morseString] {
                switch morseValue {
                case "BREAK" :
                    println("Break")
                default :
                    for letter in morseValue {
                        
                    }
                }
            }
        }
        
        return morseArray
    }
    
//    func flashArrayFromString(message : String!) -> Array<String> {
//        
//    }
    
//    func flashArrayFromMorseArray(morseArray : Array<String>!) -> Array<String> {
//        
//    }

}

//                NSMutableArray *letter = [NSMutableArray new];
//                for (NSInteger j=0; j<morseValue.length; j++) {
//                    NSString *pip = [morseValue substringWithRange:NSMakeRange(j, 1)];
//                    [letter addObject:pip];
//                }
//                [word addObject:letter];
//            }
//            [morseArray addObject:word];
//        };
//    }
//    return morseArray;
//    NSLog("Returned Morse Array");
//}
//
//-(NSString *)durationForPip:(NSString *)pip
//{
//    if ([pip isEqualToString:"."]) {
//        return "100000";
//    } else {
//        return "300000";
//    }
//    }
//    
//    - (NSMutableArray *)flashArrayFromMorseArray:(NSArray *)morseArray
//{
//    NSMutableArray *flashArray = [NSMutableArray new];
//    
//    for (NSMutableArray *word in morseArray){
//        for (NSMutableArray *letter in word){
//            for (NSString *pip in letter){
//                [flashArray addObject:"ON"];
//                [flashArray addObject:[self durationForPip:pip]];
//                [flashArray addObject:"OFF"];
//                [flashArray addObject:"100000"];
//            }
//            [flashArray addObject:"200000"];
//        }
//        [flashArray addObject:"400000"];
//    }
//    
//    NSOperationQueue *flashQueue = [NSOperationQueue new];
//    [flashQueue setMaxConcurrentOperationCount:1];
//    
//    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
//    
//    for (NSString *flashOpString in flashArray) {
//        NSBlockOperation *flashOperation;
//        if ([flashOpString isEqualToString:"ON"]) {
//            flashOperation = [NSBlockOperation blockOperationWithBlock:^{
//                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                if ([device hasTorch] && [device hasFlash]) {
//                [device lockForConfiguration:nil];
//                [device setTorchMode:AVCaptureTorchModeOn];
//                [device setFlashMode:AVCaptureFlashModeOn];
//                [device unlockForConfiguration];
//                }
//                }];
//                }];
//        } else if ([flashOpString isEqualToString:"OFF"]) {
//            flashOperation = [NSBlockOperation blockOperationWithBlock:^{
//                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                if ([device hasTorch] && [device hasFlash]) {
//                [device lockForConfiguration:nil];
//                [device setTorchMode:AVCaptureTorchModeOff];
//                [device setFlashMode:AVCaptureFlashModeOff];
//                [device unlockForConfiguration];
//                }
//                }];
//                }];
//        } else {
//            flashOperation = [NSBlockOperation blockOperationWithBlock:^{
//                usleep([flashOpString integerValue]);
//                }];
//        }
//        [flashQueue addOperation:flashOperation];
//    }
//    
//    return flashArray;
//    NSLog("Returned Flash Array");
//    
//    }
//    
//    - (NSMutableArray *)flashArrayFromString
//{
//    NSMutableArray *morsePhrase = [self morseArrayFromString];
//    return [self flashArrayFromMorseArray:morsePhrase];
//    NSLog("flashArrayFromString finished");
//    
//}

