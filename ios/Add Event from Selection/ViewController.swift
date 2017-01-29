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
        //DJRKeyboardEvents.sendCommandC()
        //selection.stringValue = DJRPasteboardProxy.selectedText()
        if let pythonPath = Bundle.main.path(forResource: "python", ofType: nil, inDirectory: "dateparser/bin") {
            if let result = RunPython.runPythonCode("import dateparser; print(dateparser.parse(" + "\"\(selection.stringValue)\", settings={'SKIP_TOKENS': ['alle', 'ore']}))", withPythonPath: pythonPath) as String? {
                print(result)
                date.stringValue = result
            }
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

