//
//  TextSelection.m
//  TouchTime
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

#import "TextSelection.h"

@implementation TextSelection

+ (NSString*)getText {
    AXUIElementRef systemWideElement = AXUIElementCreateSystemWide();
    AXUIElementRef focussedElement = NULL;
    NSString *selectedText = @"";
    AXError error = AXUIElementCopyAttributeValue(systemWideElement, kAXFocusedUIElementAttribute, (CFTypeRef *)&focussedElement);
    if (error != kAXErrorSuccess) {
        NSLog(@"Could not get focussed element");
    } else {
        AXValueRef selectedTextValue = NULL;
        AXError getSelectedTextError = AXUIElementCopyAttributeValue(focussedElement, kAXSelectedTextAttribute, (CFTypeRef *)&selectedTextValue);
        if (getSelectedTextError == kAXErrorSuccess) {
            
            selectedText = (__bridge NSString *)(selectedTextValue);
            NSLog(@"%@", selectedText);
        } else {
            NSLog(@"Could not get selected text");
        }
    }
    if (focussedElement != NULL) CFRelease(focussedElement);
    CFRelease(systemWideElement);
    return selectedText;
}

@end
