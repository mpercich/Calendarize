//
//  DJRPasteboardProxy.h
//  TouchTime
//
//  Created by Michele on 25/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

#ifndef DJRPasteboardProxy_h
#define DJRPasteboardProxy_h


#endif /* DJRPasteboardProxy_h */

#import <Foundation/Foundation.h>
#import "NSPasteboard+SaveRestore.h"

/* .h */


@interface DJRPasteboardProxy : NSObject

@property NSPasteboard *pasteboard;

+ (NSString*) selectedText;

@end

