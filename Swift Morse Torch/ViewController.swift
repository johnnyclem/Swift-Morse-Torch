//
//  ViewController.swift
//  Swift Morse Torch
//
//  Created by John Clem on 6/5/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var sendButton : UIButton
    @IBOutlet var messageField : UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let notificationCenter = NSNotificationCenter.defaultCenter()
        let mainQueue = NSOperationQueue.mainQueue()

        var observer = notificationCenter.addObserverForName(UITextFieldTextDidChangeNotification, object: nil, queue: mainQueue) { _ in
                self.sendButton.enabled = self.messageField.text.utf16count > 0
        }
    }
    
    override func viewWillUnload() {
        super.viewWillUnload()
        
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.removeObserver(self, name: UITextFieldTextDidChangeNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAndSend(sender : AnyObject) {
//        let morseSymbols = messageField.text.symbolForLetter()
//        println("first symbol: \(morseSymbols)")
    }

}

