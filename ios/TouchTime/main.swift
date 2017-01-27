//
//  main.swift
//  touchtime
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

import Foundation

//DJRKeyboardEvents.sendCommandC()
//NSLog(DJRPasteboardProxy.selectedText())
//if let date = TouchTime.string(toDate: DJRPasteboardProxy.selectedText()) {
if let date = TouchTime.string(toDate: "17 feb 2017 6PM") {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    //print(dateFormatter.string(from: date))
    //print(date.description)
    NSLog(date.description)
}
