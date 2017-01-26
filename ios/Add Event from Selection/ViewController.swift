//
//  ViewController.swift
//  Add Event from Selection
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var selection: NSTextField!
    @IBOutlet weak var date: NSTextField!
    
    @IBAction func go(_ sender: Any) {
        DJRKeyboardEvents.sendCommandC()
        selection.stringValue = DJRPasteboardProxy.selectedText()
        if let date = TouchTime.string(toDate: "friday, 17 february") {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = DateFormatter.Style.medium
            self.date.stringValue = dateFormatter.string(from: date)
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

