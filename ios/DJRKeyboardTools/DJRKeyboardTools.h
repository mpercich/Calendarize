//
//  DJRKeyboardTools.h
//  TouchTime
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

#ifndef DJRKeyboardTools_h
#define DJRKeyboardTools_h


#endif /* DJRKeyboardTools_h */

/* .h */

#import <Foundation/Foundation.h>
#import <Carbon/Carbon.h>

@interface DJRKeyboardTools : NSObject
{
    TISInputSourceRef            layout;
    const UCKeyboardLayout* layoutData;
    id                      keyCodeCache;
}

+ (id)sharedInstance;
- (TISInputSourceRef)keyboardLayout;
- (NSString *)translateKeyCode:(short)keyCode;
- (CGKeyCode)keyCodeForChar:(unichar)aChar;

@end


