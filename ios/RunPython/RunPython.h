//
//  RunPython.h
//  Calendarize
//
//  Created by Percich Michele (UniCredit Business Integrated Solutions) on 27/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RunPython : NSObject

+ (NSString*)runPythonCode:(NSString*)code withPythonPath:(NSString*)path;

@end
