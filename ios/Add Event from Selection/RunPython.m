//
//  RunPython.m
//  Calendarize
//
//  Created by Percich Michele (UniCredit Business Integrated Solutions) on 27/01/17.
//  Copyright © 2017 Michele Percich. All rights reserved.
//

#import "RunPython.h"
#import <Python/Python.h>

@implementation RunPython

+ (NSString*)runPythonCode:(NSString*)code withPythonPath:(NSString*)path {
    Py_SetProgramName(path.UTF8String);
    Py_Initialize();
    PyObject *sys = PyImport_ImportModule("sys");
    PyObject *out = PyFile_FromString("python_out", "w+");
    PyObject_SetAttrString(sys, "stdout", out);
    //Pretty intuitive, right? Now embedded Python’s stdout points to the newly created file, python_out. Working with the script’s output from C is also trivial:
    PyRun_SimpleString(code.UTF8String);
    FILE *output = PyFile_AsFile(out);
    rewind(output);
    int maxlen = 255;
    char str[maxlen];
    fgets(str, maxlen, output);
    /* fgets(), fread(), any function that takes (FILE*) */
    //The output stream can be reset to the initial (empty) state like this:
    ftruncate(fileno(output), 0);
    return [NSString stringWithUTF8String:str];
}

@end
