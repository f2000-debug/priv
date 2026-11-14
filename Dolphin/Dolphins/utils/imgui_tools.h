//
//  ImguiTools.h
//  Dolphins
//
//  t.me/UltimateEngine
//

#ifndef ImguiTools_h
#define ImguiTools_h


#define IM_FLOOR(_VAL)                  ((float)(int)(_VAL))
#include "imgui_internal.h"


void HelpMarker(const char *desc);

void setDarkTheme();

float calcTextSize(const char *text, float font_size = 0);

#endif /* ImguiTools_h */
