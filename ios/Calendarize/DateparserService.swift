//
//  DateparserService.swift
//  Calendarize
//
//  Created by Michele on 29/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

import Foundation
import AppKit

class DateparserService {
    
    @objc public func parseString(_ pboard: NSPasteboard!, userData: String!, error: AutoreleasingUnsafeMutablePointer<NSString?>) {
        let strArr = pboard.readObjects(forClasses: [NSString.self], options: nil)
        if strArr!.count > 0 {
            if let date = (strArr![0] as? String) {
                let pythonPath = Bundle.main.path(forResource: "python", ofType: nil, inDirectory: "dateparser/bin")
                if let result = RunPython.runPythonCode("import dateparser; print(dateparser.parse(" + "\"\(date)\", settings={'SKIP_TOKENS': ['alle', 'ore']}))", withPythonPath: pythonPath!) {
                    print(date + ": " + result)
                }
                //pboard.clearContents()
                //pboard.writeObjects([result as NSPasteboardWriting])
            }
        }
    }
}
