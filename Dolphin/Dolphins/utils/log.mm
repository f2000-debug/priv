//
//  log.cpp
//  Dolphins
//
//  t.me/UltimateEngine
//

#include "log.h"

void selfLog(const char* format,...){
    char text[10240];
    va_list argList;
    va_start(argList, format);
    vsprintf(text, format,argList);
    va_end(argList);
    NSLog(@"[%s] %s","Dolphins",text);
}



char* replace(char*s1,char*s2,char*s3){
    char *p,*from,*to,*begin=s1;
    int c1,c2,c3,c;
    c2=strlen(s2);
    c3=(s3!=NULL)?strlen(s3):0;
    if(c2==0)return s1;
    while(true)
    {
        c1=strlen(begin);
        p=strstr(begin,s2);
        if(p==NULL)
            return s1;
        if(c2>c3)
        {
            from=p+c2;
            to=p+c3;
            c=c1-c2+begin-p+1;
            while(c--)
                *to++=*from++;
        }
        else if(c2<c3)
        {
            from=begin+c1;
            to=from-c2+c3;
            c=from-p-c2+1;
            while(c--)
                *to--=*from--;
        }
        if(c3)
        {
            from=s3,to=p,c=c3;
            while(c--)
                *to++=*from++;
        }
        begin=p+c3;
    }
}
