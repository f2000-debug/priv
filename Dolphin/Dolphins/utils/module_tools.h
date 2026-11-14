//
//  CustomStrcut.h
//  Dolphins
//
//  t.me/UltimateEngine
//

#ifndef CustomStrcut_h
#define CustomStrcut_h

#include "imgui.h"

#include <string>



enum SystemStatus {

    WaitingResponse,

    SystemError,

    NeedUpdate,

    LoginFailure,

    CheckFailure,

    TransmissionNormal,
};

enum MaterialType{
    Null = -1,
    Vehicle = 0,
    Airdrop = 1,
    FlareGun = 2,
    Sniper = 3,
    Rifle = 4,
    Missile = 5,
    Armor = 6,
    SniperParts = 7,
    RifleParts = 8,
    Drug = 9,
    Bullet = 10,
    Grip = 11,
    Sight = 12,
    Warning = 13,
    All = 14,
    WEP=15,
    MachineGun=16,
    Pistol=17,
    ShotGun=18
    
};


struct MainSwitch {
    bool playerStatus;
    bool playerStatus2;
    bool playerStatus3;
    bool materialStatus;
    bool aimbotStatus;
    bool magich;
    bool magicb;
    bool hitx;
    bool tamnho;
    bool anti;
    bool anti1;
    bool n70;
    bool n100;
    bool nshake;
    bool flashbl;
    bool nosuong;
    bool nrung;
    bool hidehack;
    bool uop;
    bool uop2;
    bool uop3;
    bool moi;
    bool pha;
    bool phabalo;
    bool qua;
    bool quabalo;
    bool bape;
    bool bapebalo;
    bool posidon;
    bool mudinh;
    bool mubang;
    bool akbang;
    bool m4bang;
    bool scarl;
    bool m762;
    bool ace;
    bool acehu;
    bool m4banghu;
    bool m4he;
    bool m4led;
    bool m4gamgu;
    bool scarlhu;
    bool balohe;
    bool tadal;
    bool ja;
    bool fpsonsc;
    bool hite;
    bool ipadv;
    bool highj;
    bool flash;
    bool flashj;
    bool bigbl;
    bool nore;
    bool nogl;
    bool shootqk;
    bool tg;
    bool bulebd;
    bool td;
    bool stan;
    bool speedn;
    bool flypl;
    bool antena;
    bool combom4;

    
    
};


struct PlayerSwitch {

    bool boxStatus;

    bool boneStatus;
    
    bool boneStatus1;

    bool lineStatus;

    bool infoStatus;
    
    bool infoStatus2;

    bool radarStatus;

    bool backStatus;

    bool SCStatus;
    
    bool SCStatus2;

    bool SCWZStatus;

    bool WZStatus;

    bool WZWZStatus;
    
    bool FPSStatus;

    bool jdStatus;

    bool jjStatus;

    float radarSize;

    ImVec2 radarCoord;
};


struct AimbotController {

    bool fallNotAim;

    int aimbotMode;

    int aimbotParts;

    float aimbotRadius;

    bool showAimbotRadius;

    float aimbotIntensity;
    
    float skinIntensity;
    
    float distance;
    
    bool smoke;
};

struct ModuleControl{
    bool menuStatus;
    
    bool hidehack;
    
    bool memory;

    int fps;
    //
    SystemStatus systemStatus;
    
    MainSwitch mainSwitch;
    
    PlayerSwitch playerSwitch;
    
    bool materialSwitch[All];
    
    AimbotController aimbotController;
};


struct BonesData {
    ImVec2 head;
    ImVec2 pit;
    ImVec2 pelvis;
    ImVec2 lcollar;
    ImVec2 rcollar;
    ImVec2 lelbow;
    ImVec2 relbow;
    ImVec2 lwrist;
    ImVec2 rwrist;
    ImVec2 lthigh;
    ImVec2 rthigh;
    ImVec2 lknee;
    ImVec2 rknee;
    ImVec2 lankle;
    ImVec2 rankle;
};

struct PlayerData {
    std::string name;
    ImVec2 screen;
    ImVec2 size;
    ImVec2 radar;
    float angle;
    int team;
    float Vehiclehp;
    float Vehiclefuel;
    float hp;
    std::string weaponName;
    std::string statusName;
    int distance;
    int robot;
    int status;
    BonesData bonesData;
    bool visibility;
    
};


struct MaterialData {
    int type;
    int id;
    std::string name;
    int distance;
    float Vehiclehp;
    float Vehiclefuel;
    ImVec2 screen;
};

struct StaticPlayerData {
    uintptr_t addr;
    uintptr_t coordAddr;
    std::string name;
    int team;
    int status;
    bool robot;
};

struct StaticMaterialData {
    std::string name;
    int type;
    int id;
    uintptr_t addr;
    uintptr_t coordAddr;
};

struct Ue4Transform {
    ImVec4 rotation;
    ImVec3 translation;
    ImVec3 scale3d;
};

struct Ue4Matrix {
    float matrix[4][4];
    
    float *operator[](int index) {
        return matrix[index];
    }
    
};

struct Ue4Rotator {
    float pitch;
    float yaw;
    float roll;
};

struct MinimalViewInfo {
    ImVec3 location;
    ImVec3 locationLocalSpace;
    Ue4Rotator rotation;
    float fov;
};

struct MaterialStruct {
    int type;
    int id;
    char name[64];
};

ImVec3 matrixToVector(Ue4Matrix matrix);

Ue4Matrix matrixMulti(Ue4Matrix m1, Ue4Matrix m2);

Ue4Matrix transformToMatrix(Ue4Transform transform);

Ue4Matrix rotatorToMatrix(ImVec3 rotation);

ImVec2 worldToScreen(ImVec3 worldLocation, MinimalViewInfo camViewInfo, ImVec2 screenCenter);

float getAngleDifference(float angle1, float angle2);

float change(float num);

float get2dDistance(ImVec2 self, ImVec2 object);

float get3dDistance(ImVec3 self, ImVec3 object, float divice);


ImVec2 rotateCoord(float angle, ImVec2 coord);

float rotateAngle(ImVec3 selfCoord, ImVec3 targetCoord);

ImVec2 rotateAngleView(ImVec3 selfCoord, ImVec3 targetCoord);

bool isRecycled(const char *name);

MaterialStruct isWeapon(const char *name);

MaterialStruct isMaterial(const char *name);

MaterialStruct isBoxMaterial(int box_goods_id);
#endif /* CustomStrcut_h */


