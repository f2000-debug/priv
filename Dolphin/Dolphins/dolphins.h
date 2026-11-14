//
//  Dolphins.h
//  Dolphins
//
//  t.me/UltimateEngine
//
#include "imgui.h"


void *readStaticData(void *);

void readFrameData(ImVec2 screenSize,std::vector<PlayerData> &playerDataList, std::vector<MaterialData> &materialDataList);


void *silenceAimbot(void *);
    
bool isCoordVisibility(ImVec3 coord);

bool isOnSmoke(ImVec3 coord);

char* getPlayerName(uintptr_t addr);


char* getClassName(int classId);
char* statusName(int statusId);

ImVec3 getBone(uintptr_t human, uintptr_t bones, int part);

bool getBone2d(MinimalViewInfo pov,ImVec2 screen, uintptr_t human, uintptr_t bones, int part,ImVec2 &buf);
