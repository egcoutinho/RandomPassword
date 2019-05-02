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

    @IBOutlet private weak var textField: NSTextField!
    @IBOutlet private weak var pwdLengthSlider: NSSlider!
    
    override var windowNibName: NSNib.Name?
    {
        return "MainWindowController"
    }
    
    override func windowDidLoad()
    {
        super.windowDidLoad()

        updatePWD()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    
    
    @IBAction func onSlide(_ sender: NSSlider)
    {
        updatePWD()
    }
    
    @IBAction func generatePassword(sender: AnyObject)
    {
        updatePWD()
    }
    
    private func updatePWD()
    {
        let length = Int(pwdLengthSlider.intValue)
        
        print("\(length)")
        let password = generateRandomString(length: length)
        
        textField.stringValue = password
    }
    
}
