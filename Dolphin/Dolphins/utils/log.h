//
//  log.hpp
//  Dolphins
//
//  t.me/UltimateEngine
//

#ifndef log_hpp
#define log_hpp

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

void selfLog(const char* format,...);

char* replace(char*s1,char*s2,char*s3=NULL);
#endif /* log_hpp */
