//
//  AppDelegate.swift
//  Calendarize
//
//  Created by Percich Michele (UniCredit Business Integrated Solutions) on 27/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        // Insert code here to initialize your application
        //NSApp.servicesProvider = nil
        NSApp.servicesProvider = DateparserService()
        NSUpdateDynamicServices()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

