//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Eduardo Coutinho on 15/02/2018.
//  Copyright © 2018 CyberShark. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{

    //@IBOutlet weak var window: NSWindow!
    var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        // Create a window controller with XIB file of the same name
        //let mainWindowController = MainWindowController(windowNibName: NSNib.Name(rawValue: "MainWindowController"))
        let mainWindowController = MainWindowController()

        
        // Put the window of the window controller on screen
        mainWindowController.showWindow(self)
        
        //Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification)
    {
        // Insert code here to tear down your application
    }


}

