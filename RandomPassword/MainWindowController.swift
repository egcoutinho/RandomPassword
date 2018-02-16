//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Eduardo Coutinho on 15/02/2018.
//  Copyright © 2018 CyberShark. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController
{

    @IBOutlet weak var textField: NSTextField!
    
    override var windowNibName: NSNib.Name?
    {
        return NSNib.Name(rawValue: "MainWindowController")
    }
    
    override func windowDidLoad()
    {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(sender: AnyObject)
    {
        let length = 8
        let password = generateRandomString(length: length)
        
        textField.stringValue = password
        
        // Tell the text field what to display
        //textField.stringValue = "Hello!"
    }
    
}