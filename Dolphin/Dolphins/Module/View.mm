//
//  DrawWindow.m
//  Dolphins
//
//  t.me/UltimateEngine
//
#import "View.h"
#include "image_base64.h"
#import "OverlayView.h"
#import "mahoa.h"
#import "HeeeNoScreenShotView.h"
#include <JRMemory/MemScan.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>


//#import "Gzb.h"
#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
#define screenHeight [UIScreen mainScreen].bounds.size.height
#define screenWidth [UIScreen mainScreen].bounds.size.width
//#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
@implementation mao
ImDrawList *imDrawList;
//HeeeNoScreenShotView *HideEsp;
//UIWindow *Esp;

CGSize screenSize;

std::vector<PlayerData> playerDataList;
std::vector<MaterialData> materialDataList;
int xWidth =50;
int xtWidth =10;
int hpWidth = 85;
int hpHeight = 28;
int hpWidth2 = 50;
int hpHeight2 = 8;
int hpHeight3 = 5;
int hpWidth3 = 85;
int scWidth = 220;
int scHeight = 110;
int qtWidth = 220;
int qtHeight = 50;

id<MTLTexture> leizhaTexture;
id<MTLTexture> hongzhaTexture;
id<MTLTexture> shouleiTexture;
id<MTLTexture> sldTexture;
id<MTLTexture> ywdTexture;
id<MTLTexture> rspTexture;

id<MTLTexture> countTexture;
id<MTLTexture> count1Texture;
id<MTLTexture> count2Texture;
id<MTLTexture> count3Texture;
id<MTLTexture> count4Texture;
id<MTLTexture> count5Texture;
id<MTLTexture> quanTexture;
id<MTLTexture> quan2Texture;
id<MTLTexture> playerTexture;
id<MTLTexture> robotTexture;

id<MTLTexture> M416Texture;
id<MTLTexture> M16Texture;
id<MTLTexture> GrozaTexture;
id<MTLTexture> AkmTexture;
id<MTLTexture> SCARTexture;
id<MTLTexture> MK47Texture;
id<MTLTexture> AUGTexture;
id<MTLTexture> M762Texture;
id<MTLTexture> QBZTexture;
id<MTLTexture> leiTexture;
id<MTLTexture> huoTexture;
id<MTLTexture> yanTexture;
id<MTLTexture> shanTexture;
id<MTLTexture> R1895Texture;
id<MTLTexture> P92Texture;
id<MTLTexture> P1911Texture;
id<MTLTexture> P18CTexture;
id<MTLTexture> R45Texture;
id<MTLTexture> SKSTexture;
id<MTLTexture> MINITexture;
id<MTLTexture> MK14Texture;
id<MTLTexture> VSSTexture;
id<MTLTexture> QBUTexture;
id<MTLTexture> SLRTexture;
id<MTLTexture> AWMTexture;
id<MTLTexture> M24Texture;
id<MTLTexture> K98Texture;
id<MTLTexture> MOTexture;
id<MTLTexture> LIANTexture;
id<MTLTexture> GUNTexture;
id<MTLTexture> DAOTexture;
id<MTLTexture> GUOTexture;
id<MTLTexture> UZITexture;
id<MTLTexture> TANGTexture;
id<MTLTexture> VKTTexture;
id<MTLTexture> MP5KTexture;
id<MTLTexture> UMP9Texture;
id<MTLTexture> YNTexture;
id<MTLTexture> DP28Texture;
id<MTLTexture> MG3Texture;
id<MTLTexture> M249Texture;
id<MTLTexture> DBSTexture;
id<MTLTexture> S686Texture;
id<MTLTexture> S12KTexture;

id<MTLTexture> M4162Texture;
id<MTLTexture> M162Texture;
id<MTLTexture> Groza2Texture;
id<MTLTexture> Akm2Texture;
id<MTLTexture> SCAR2Texture;
id<MTLTexture> MK472Texture;
id<MTLTexture> AUG2Texture;
id<MTLTexture> M7622Texture;
id<MTLTexture> QBZ2Texture;
id<MTLTexture> lei2Texture;
id<MTLTexture> huo2Texture;
id<MTLTexture> yan2Texture;
id<MTLTexture> shan2Texture;
id<MTLTexture> R18952Texture;
id<MTLTexture> P922Texture;
id<MTLTexture> P19112Texture;
id<MTLTexture> P18C2Texture;
id<MTLTexture> R452Texture;
id<MTLTexture> SKS2Texture;
id<MTLTexture> MINI2Texture;
id<MTLTexture> MK142Texture;
id<MTLTexture> VSS2Texture;
id<MTLTexture> QBU2Texture;
id<MTLTexture> SLR2Texture;
id<MTLTexture> AWM2Texture;
id<MTLTexture> M242Texture;
id<MTLTexture> K982Texture;
id<MTLTexture> MO2Texture;
id<MTLTexture> LIAN2Texture;
id<MTLTexture> GUN2Texture;
id<MTLTexture> DAO2Texture;
id<MTLTexture> GUO2Texture;
id<MTLTexture> UZI2Texture;
id<MTLTexture> TANG2Texture;
id<MTLTexture> VKT2Texture;
id<MTLTexture> MP5K2Texture;
id<MTLTexture> UMP92Texture;
id<MTLTexture> YN2Texture;
id<MTLTexture> DP282Texture;
id<MTLTexture> MG32Texture;
id<MTLTexture> M2492Texture;
id<MTLTexture> DBS2Texture;
id<MTLTexture> S6862Texture;
id<MTLTexture> S12K2Texture;




id<MTLTexture> JPTexture;
id<MTLTexture> BBTexture;
id<MTLTexture> jcTexture;
id<MTLTexture> mttTexture;
id<MTLTexture> mtTexture;
id<MTLTexture> myTexture;
id<MTLTexture> R8Texture;
id<MTLTexture> mt3Texture;

id<MTLTexture> m416Texture;
id<MTLTexture> akmTexture;
id<MTLTexture> augTexture;
id<MTLTexture> grozaTexture;
id<MTLTexture> m16Texture;
id<MTLTexture> m24Texture;
id<MTLTexture> m249Texture;
id<MTLTexture> m762Texture;
id<MTLTexture> mg3Texture;
id<MTLTexture> miniTexture;
id<MTLTexture> mk14Texture;
id<MTLTexture> mk47Texture;
id<MTLTexture> scarTexture;
id<MTLTexture> slrTexture;
id<MTLTexture> awmTexture;
id<MTLTexture> dp28Texture;
id<MTLTexture> k98Texture;
id<MTLTexture> vssTexture;
id<MTLTexture> sksTexture;
id<MTLTexture> hzTexture;

id<MTLTexture> ylTexture;
id<MTLTexture> jjbTexture;
id<MTLTexture> ztyTexture;
id<MTLTexture> ylxTexture;
id<MTLTexture> zhenTexture;

id<MTLTexture> b4Texture;
id<MTLTexture> b3Texture;
id<MTLTexture> b6Texture;
id<MTLTexture> b8Texture;

id<MTLTexture> ktTexture;
id<MTLTexture> t3Texture;
id<MTLTexture> j3Texture;
id<MTLTexture> bb3Texture;

id<MTLTexture> tleiTexture;
id<MTLTexture> tyanTexture;
id<MTLTexture> thuoTexture;

- (instancetype)initWithFrame:(ModuleControl*)control {
    self = [super init];
    
    self.moduleControl = control;
    
    screenSize = [UIScreen mainScreen].bounds.size;
    screenSize.width *= [UIScreen mainScreen].nativeScale;
    screenSize.height *= [UIScreen mainScreen].nativeScale;
    
    return self;
    
    
}

-(void)drawDrawWindow {
    ImGui::SetNextWindowSize(ImVec2(screenSize.width,screenSize.height));
    ImGui::SetNextWindowPos(ImVec2(0, 0));
    ImGui::Begin("alpha", nullptr, ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoInputs | ImGuiWindowFlags_NoMove);
    
    imDrawList = ImGui::GetWindowDrawList();
    std::string str = "CRIOS";
    imDrawList->AddTextX(ImVec2(screenSize.width / 2-70, 100.5 + countTexture.height / 2 - 100), ImColor(255, 0, 39),45, str.c_str());
    
    
    if (self.moduleControl->mainSwitch.fpsonsc) {
        ImGui::TextColored(ImColor(0,255,0), "FPS: %.1f", ImGui::GetIO().Framerate);
        ImGui::TextColored(ImColor(120,255,0), "MS/FRAME: %.3f", 500.0f / ImGui::GetIO().Framerate);
    }
    
    //    if (self.moduleControl->mainSwitch.hidehack) {
    //
    //        static dispatch_once_t onceToken;
    //        dispatch_once(&onceToken, ^{
    //
    //            [HideEsp addSubview:Esp];
    //        });
    //
    //    }
    //Số lượng khung để kéo
    readFrameData(ImVec2(screenSize.width / 2,screenSize.height / 2),playerDataList, materialDataList);
    for (MaterialData materialData:materialDataList) {
        // Xác định xem nó có trên màn hình không
        if (self.moduleControl->playerSwitch.WZWZStatus) {
            if (materialData.name=="[Warning] Beware of grenades") {//警告贴图
                imDrawList->AddImage((__bridge ImTextureID) leizhaTexture, ImVec2(screenSize.width / 2 - leizhaTexture.width / 2, 230), ImVec2(screenSize.width / 2 + leizhaTexture.width / 2, 230 + leizhaTexture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                std::string str = "MOVE MOVE MOVE";
                imDrawList->AddTextX(ImVec2(screenSize.width / 2-60, 100.5 + countTexture.height / 2 - 20), ImColor(255, 0, 39),90, str.c_str());
                
            }
            if (materialData.name=="[Bombing Warning] Beware of the bombing zone") {
                imDrawList->AddImage((__bridge ImTextureID) hongzhaTexture, ImVec2(screenSize.width / 2 - hongzhaTexture.width / 2, 180), ImVec2(screenSize.width / 2 + hongzhaTexture.width / 2, 180 + hongzhaTexture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="[Early Warning] Beware of grenades") {
                imDrawList->AddImage((__bridge ImTextureID) sldTexture, ImVec2(materialData.screen.x+190 - qtWidth+1, materialData.screen.y-5 -  qtHeight+1), ImVec2(materialData.screen.x+190 - qtWidth+1 + qtHeight-2 , materialData.screen.y-5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="[Early Warning] Smoke Bomb") {
                imDrawList->AddImage((__bridge ImTextureID) ywdTexture, ImVec2(materialData.screen.x+190 - qtWidth+1, materialData.screen.y-5 -  qtHeight+1), ImVec2(materialData.screen.x+190 - qtWidth+1 + qtHeight-2 , materialData.screen.y-5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="[Early Warning] Molotov cocktail") {
                imDrawList->AddImage((__bridge ImTextureID) rspTexture, ImVec2(materialData.screen.x+190 - qtWidth+1, materialData.screen.y-5 -  qtHeight+1), ImVec2(materialData.screen.x+190 - qtWidth+1 + qtHeight-2 , materialData.screen.y-5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            //            if (self.moduleControl->mainSwitch.hidehack) {
            //                static dispatch_once_t onceToken;
            //                dispatch_once(&onceToken, ^{
            //                    CGFloat width = screenSize.width * 0.5;
            //                    CGFloat height = screenSize.height * 0.5;
            //                    
            //                    if (screenSize.width > screenSize.height) {
            //                        
            //                        height = screenSize.height * 0.5;
            //                        
            //                    } else {
            //                        
            //                        width = screenSize.width * 0.5;
            //                    }
            //                    
            //                    HideEsp = [[HeeeNoScreenShotView alloc] initWithFrame:CGRectMake(0, 0, screenSize.width, screenSize.height)];
            //                    HideEsp.userInteractionEnabled = NO;
            //                    Esp = [UIApplication sharedApplication].keyWindow;
            //                    [Esp addSubview:HideEsp];
            //                });
            //            }
            //                          
            
            //物品文字
            if (materialData.distance != -100){
                //载具
                if (materialData.name=="Motorcycle") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="MotorcycleCart") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Scooter") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Buggy") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Mirado") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Dacia") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="UAZ") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="PG117") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="AquaRail") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="MiniBus") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="BRDM") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="LadaNiva") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Snowbike") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Snowmobile") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="Rony") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                if (materialData.name=="CoupeRB") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 206, 209), 21, str.c_str());
                }
                //空投盒子
                if (materialData.name=="[盒子]") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="盒子") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="[空投]") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 20, 147), 21, str.c_str());
                }
                if (materialData.name=="空投") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 20, 147), 21, str.c_str());
                }
                if (materialData.name=="Flaregun") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 20, 147), 21, str.c_str());
                }
                //狙击枪
                if (materialData.name=="QBU") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="SLR") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="SKS") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="Mini14") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="M24") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="Kar98k") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="Mk14") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="Mosin") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="MK12") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="AMR") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="AWM") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                //步枪
                if (materialData.name=="M762") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="SCAR-L") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="M416") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="M16A4") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="Mk47") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="G36C") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="QBZ") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="Groza") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="AUG") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="AKM") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="DP28") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="M249") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="MG3") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="Grenade") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="Smoke") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="Burn") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="三级甲") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="Bag 3") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="三级头") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="止痛药") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="肾上腺素") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="饮料") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="急救包") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="医疗箱") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="油桶") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="红点") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="全息") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="3X") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="4X") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="6X") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="8X") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="[预警]燃烧瓶") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(178, 34, 34), 21, str.c_str());
                }
                if (materialData.name=="[预警]烟雾弹") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(178, 34, 34), 21, str.c_str());
                }
                if (materialData.name=="[预警]小心手雷") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(178, 34, 34), 21, str.c_str());
                }
                if (materialData.name=="[轰炸预警]小心轰炸区") {
                    std::string str =  "["+ materialData.name +":" + std::to_string(materialData.distance) + "M]";
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(178, 34, 34), 21, str.c_str());
                }
            } else {
                if (materialData.name=="Painkiller") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="[药]肾上腺素") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="Drink") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="First aid kit") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="Medical kit") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 210, 0), 21, str.c_str());
                }
                if (materialData.name=="[Armor] level 3") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Backpack] level 3") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Helmet] level 3") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Armor] level 2") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Backpack] level 2") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Helmet] level 2") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                
                if (materialData.name=="[Sniper] QBU") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] SLR") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] SKS") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] Mini14") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] M24") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] Kar98k") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] Mk14") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] Mosin") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] MK12") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] AMR") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Sniper] AWM") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 0, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] M762") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] SCAR-L") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] M416") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] M16A4") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] Mk47") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] G36C") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] QBZ") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] Groza") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] AUG") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Rifle] AKM") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Machine Gun] DP28") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Machine Gun] M249") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Machine Gun] MG3") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 69, 0), 21, str.c_str());
                }
                if (materialData.name=="[Bullet] 5.56mm") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="[Bullet] 7.62mm") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="[Bullet] 300Magnum") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="[Bullet] 50BGM") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(0, 255, 0), 21, str.c_str());
                }
                if (materialData.name=="Red dot") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="Holo") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="3X") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="4X") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="6X") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="8X") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(70, 130, 180), 21, str.c_str());
                }
                if (materialData.name=="[Throw] Grenade") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="[Throw] Smoke bomb") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="[Throw] Molotov cocktail") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 127, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Cheek support plate") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Bullet bag") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[狙配件]子弹袋") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Flash hider") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Muzzle compensation") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper Accessories] Silencer") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Rapid expansion") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Sniper accessories] Expansion") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Grip] Thumb grip") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Grip] Vertical grip") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Grip] half-grip") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Muzzle Compensation") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Tactical rifle stock") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Flame suppressor") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Silencer") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Rapid expansion") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                if (materialData.name=="[Accessories] Expansion") {
                    std::string str = materialData.name;
                    imDrawList->AddTextX(ImVec2(materialData.screen.x+1 - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y+1), ImColor(0, 0, 0, 255), 21, str.c_str());
                    imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(str.c_str(), 21) / 2, materialData.screen.y), ImColor(255, 255, 80), 21, str.c_str());
                }
                
            }
        }
        //物品贴图
        if (self.moduleControl->playerSwitch.WZStatus) {
            if (materialData.name=="[预警]小心手雷") {
                imDrawList->AddImage((__bridge ImTextureID) shouleiTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="UAZ") {
                imDrawList->AddImage((__bridge ImTextureID) JPTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="蹦蹦") {
                imDrawList->AddImage((__bridge ImTextureID) BBTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="轿车") {
                imDrawList->AddImage((__bridge ImTextureID) jcTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="摩托艇") {
                imDrawList->AddImage((__bridge ImTextureID) mttTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="摩托车") {
                imDrawList->AddImage((__bridge ImTextureID) mtTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="小绵羊") {
                imDrawList->AddImage((__bridge ImTextureID) myTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="CoupeRB") {
                imDrawList->AddImage((__bridge ImTextureID) R8Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="三轮摩托") {
                imDrawList->AddImage((__bridge ImTextureID) mt3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            
            if (materialData.name=="M416") {
                imDrawList->AddImage((__bridge ImTextureID) m416Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="AKM") {
                imDrawList->AddImage((__bridge ImTextureID) akmTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="AUG") {
                imDrawList->AddImage((__bridge ImTextureID) augTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Groza") {
                imDrawList->AddImage((__bridge ImTextureID) grozaTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="M16A4") {
                imDrawList->AddImage((__bridge ImTextureID) m16Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="M24") {
                imDrawList->AddImage((__bridge ImTextureID) m24Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="大菠萝") {
                imDrawList->AddImage((__bridge ImTextureID) m249Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="M762") {
                imDrawList->AddImage((__bridge ImTextureID) m762Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="MG3") {
                imDrawList->AddImage((__bridge ImTextureID) mg3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Mini14") {
                imDrawList->AddImage((__bridge ImTextureID) miniTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Mk14") {
                imDrawList->AddImage((__bridge ImTextureID) mk14Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Mk47") {
                imDrawList->AddImage((__bridge ImTextureID) mk47Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="SCAR-L") {
                imDrawList->AddImage((__bridge ImTextureID) scarTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="SLR") {
                imDrawList->AddImage((__bridge ImTextureID) slrTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="AWM") {
                imDrawList->AddImage((__bridge ImTextureID) awmTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="大盘鸡") {
                imDrawList->AddImage((__bridge ImTextureID) dp28Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Kar98k") {
                imDrawList->AddImage((__bridge ImTextureID) k98Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="SKS") {
                imDrawList->AddImage((__bridge ImTextureID) sksTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="[Box]") {
                imDrawList->AddImage((__bridge ImTextureID) hzTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="盒子") {
                imDrawList->AddImage((__bridge ImTextureID) ktTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+17 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+17 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            
            if (materialData.name=="饮料") {
                imDrawList->AddImage((__bridge ImTextureID) ylTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="止痛药") {
                imDrawList->AddImage((__bridge ImTextureID) ztyTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="急救包") {
                imDrawList->AddImage((__bridge ImTextureID) jjbTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="医疗箱") {
                imDrawList->AddImage((__bridge ImTextureID) ylxTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="肾上腺素") {
                imDrawList->AddImage((__bridge ImTextureID) zhenTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            
            if (materialData.name=="4X") {
                imDrawList->AddImage((__bridge ImTextureID) b4Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="3X") {
                imDrawList->AddImage((__bridge ImTextureID) b3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="6X") {
                imDrawList->AddImage((__bridge ImTextureID) b6Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="8X") {
                imDrawList->AddImage((__bridge ImTextureID) b8Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="[Airdrop]") {
                imDrawList->AddImage((__bridge ImTextureID) ktTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="空投") {
                imDrawList->AddImage((__bridge ImTextureID) ktTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Helmet 3") {
                imDrawList->AddImage((__bridge ImTextureID) t3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="Armor 3") {
                imDrawList->AddImage((__bridge ImTextureID) j3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="三包") {
                imDrawList->AddImage((__bridge ImTextureID) bb3Texture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="手雷") {
                imDrawList->AddImage((__bridge ImTextureID) tleiTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="烟雾弹") {
                imDrawList->AddImage((__bridge ImTextureID) tyanTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            if (materialData.name=="燃烧瓶") {
                imDrawList->AddImage((__bridge ImTextureID) thuoTexture, ImVec2(materialData.screen.x+165 - scWidth+1, materialData.screen.y+10 -  scHeight+1), ImVec2(materialData.screen.x+165 - scWidth+1 + scHeight-2 , materialData.screen.y+10 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
            }
            //物品距离——贴图
            if (materialData.distance != -100) {
                std::string str = std::to_string(materialData.distance) + "M";
                imDrawList->AddTextX(ImVec2(materialData.screen.x-14 - calcTextSize(std::to_string(materialData.distance).c_str(), 22) / 2, materialData.screen.y-4 ), ImColor(255, 255,0), 22, str.c_str());
            } else {
                std::string str = materialData.name + ":";//盒子内物资
                imDrawList->AddRectFilled({materialData.screen.x - calcTextSize(materialData.name.c_str(), 22) / 2, materialData.screen.y }, {materialData.screen.x + calcTextSize(materialData.name.c_str(), 22) / 2, materialData.screen.y + 22}, ImColor(0, 0, 0, 80), 10.0f);
                imDrawList->AddTextX(ImVec2(materialData.screen.x - calcTextSize(materialData.name.c_str(), 22) / 2, materialData.screen.y + (22 / 2 - 22 / 2)), ImColor(255, 255, 255), 22, materialData.name.c_str());
            }
        }
    }
    if (self.moduleControl->mainSwitch.playerStatus) {
        //雷达UI
        if (self.moduleControl->playerSwitch.radarStatus) {
            //底色
            imDrawList->AddCircleFilled({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, 225 * (self.moduleControl->playerSwitch.radarSize / 100), ImColor(0, 0, 0,30));
            //外形
            imDrawList->AddCircle({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, 225 * (self.moduleControl->playerSwitch.radarSize / 100), ImColor(255, 0, 0), 0, 1.0f);
            //内圈
            imDrawList->AddCircle({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, 110 * (self.moduleControl->playerSwitch.radarSize / 100), ImColor(0, 128, 128), 0, 1.0f);
            //内圈底色
            imDrawList->AddCircleFilled({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, 110 * (self.moduleControl->playerSwitch.radarSize / 100), ImColor(0, 128,128,30));
            
            //T
            imDrawList->AddLine({(float) (self.moduleControl->playerSwitch.radarCoord.x - 225 * (self.moduleControl->playerSwitch.radarSize / 100)), self.moduleControl->playerSwitch.radarCoord.y}, {(float) (self.moduleControl->playerSwitch.radarCoord.x + 225 * (self.moduleControl->playerSwitch.radarSize / 100)), self.moduleControl->playerSwitch.radarCoord.y}, ImColor(0, 200, 0), 1.0f);
            imDrawList->AddLine({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, {self.moduleControl->playerSwitch.radarCoord.x, (float) (self.moduleControl->playerSwitch.radarCoord.y + 225 * (self.moduleControl->playerSwitch.radarSize / 100))}, ImColor(0, 200, 0), 1.0f);
            // \/
            ImVec2 rotation = rotateCoord(130, ImVec2(0, 225 * (self.moduleControl->playerSwitch.radarSize / 100)));
            imDrawList->AddLine({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, {self.moduleControl->playerSwitch.radarCoord.x + rotation.x, self.moduleControl->playerSwitch.radarCoord.y + rotation.y}, ImColor(200, 0, 0), 1.0f);
            //————
            rotation = rotateCoord(-130, ImVec2(0, 225 * (self.moduleControl->playerSwitch.radarSize / 100)));
            imDrawList->AddLine({self.moduleControl->playerSwitch.radarCoord.x, self.moduleControl->playerSwitch.radarCoord.y}, {self.moduleControl->playerSwitch.radarCoord.x + rotation.x, self.moduleControl->playerSwitch.radarCoord.y + rotation.y}, ImColor(200, 0, 0), 1.0f);
        }
        //Làm trống số lượng người
        int playerCount = 0, robotCount = 0;
        for (PlayerData playerData:playerDataList) {
            //Số lượng con người và máy móc và số lượng người thực
            ImColor color, color150;
            if (!playerData.robot) {//người thực
                if (playerData.visibility) {
                    color = ImColor(0, 255, 0);//dễ thấy
                    std::string str = "!! Warning enemy is nearby !!";
                    imDrawList->AddTextX(ImVec2(screenSize.width / 3-60, 200.5 + countTexture.height / 2 - 65), ImColor(247, 4, 4),50, str.c_str());
                } else {
                    color = ImColor(255, 0, 0);// Vô hình
                }
                playerCount += 1;
            } else {
                if (playerData.visibility) {
                    color = ImColor(0, 255, 0);//dễ thấy
                } else {
                    color = ImColor(255, 255, 255);//Vô hình
                }
                robotCount += 1;
            }
            //雷达UI
            if (self.moduleControl->playerSwitch.radarStatus) {//chấm bi
                imDrawList->AddCircleFilled({(float) (self.moduleControl->playerSwitch.radarCoord.x + playerData.radar.x * (self.moduleControl->playerSwitch.radarSize / 100)), (float) (self.moduleControl->playerSwitch.radarCoord.y + playerData.radar.y * (self.moduleControl->playerSwitch.radarSize / 100))}, 8, color);
                std::string str = std::to_string(playerData.distance) + "M";//距离
                imDrawList->AddTextX(ImVec2((float) (self.moduleControl->playerSwitch.radarCoord.x + playerData.radar.x * (self.moduleControl->playerSwitch.radarSize / 100) + 12), (float) (self.moduleControl->playerSwitch.radarCoord.y + playerData.radar.y * (self.moduleControl->playerSwitch.radarSize / 100) - 12)), color, 24, str.c_str());
            }
            //Xác định xem nó có trên màn hình không
            if (playerData.screen.x - hpWidth < screenSize.width && playerData.screen.x + hpWidth > 0 && playerData.screen.y > 0 && playerData.screen.y < screenSize.height) {
                if (self.moduleControl->playerSwitch.infoStatus) {
                    //  lề dưới
                    //       int infoBottomMargin = playerData.distance / 7 + 5;
                    if (!playerData.robot) {
                        // thanh máu
                        if (playerData.hp<=1) {
                            std::string str = std::to_string(playerData.team) + ":    KNOCK" + playerData.name;
                            imDrawList->AddTextX(ImVec2(playerData.screen.x + 33 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 22 - hpHeight / 2 + 9), ImColor(0, 0, 0, 255), 15, str.c_str());
                            imDrawList->AddTextX(ImVec2(playerData.screen.x + 33 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4,  playerData.screen.y - playerData.size.y - 23 - hpHeight / 2 + 9), ImColor(216, 206, 206), 15, str.c_str());
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth3, playerData.screen.y - playerData.size.y-10  - hpHeight3}, {playerData.screen.x - hpWidth3 + (hpWidth3 *2), playerData.screen.y - playerData.size.y-43 }, ImColor(255, 165, 0));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth * 2), playerData.screen.y - playerData.size.y-10 }, ImColor(142, 142, 138, 240));
                        } else {
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth3, playerData.screen.y - playerData.size.y-10  - hpHeight3}, {playerData.screen.x - hpWidth3 + (hpWidth3 *2), playerData.screen.y - playerData.size.y-43 }, ImColor(216, 206, 206));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth * 2), playerData.screen.y - playerData.size.y-10 }, ImColor(142, 142, 138, 240));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth * 2) * playerData.hp / 100, playerData.screen.y - playerData.size.y-10 }, ImColor(243, 75, 45, 120));
                        }
                        
                        
                        std::string str = std::to_string(playerData.team) + ":    " + playerData.name;
                        imDrawList->AddTextX(ImVec2(playerData.screen.x + 33 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 22 - hpHeight / 2 + 9), ImColor(0, 0, 0, 255), 15, str.c_str());
                        imDrawList->AddTextX(ImVec2(playerData.screen.x + 33 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4,  playerData.screen.y - playerData.size.y - 23 - hpHeight / 2 + 9), ImColor(255, 255, 255), 15, str.c_str());
                        str = std::to_string(playerData.distance) + "M";
                        imDrawList->AddTextX(ImVec2(playerData.bonesData.rknee.x-22 - calcTextSize(std::to_string(playerData.distance).c_str(), 20) / 6, playerData.bonesData.rknee.y+21 - hpHeight ), ImColor(255, 255, 255), 23, str.c_str());
                        imDrawList->AddTextX(ImVec2(playerData.bonesData.rknee.x-23 - calcTextSize(std::to_string(playerData.distance).c_str(), 20) / 6, playerData.bonesData.rknee.y+20 - hpHeight ), ImColor(255, 255, 255), 23, str.c_str());
                        
                    } else {
                        if (playerData.hp<=1) {
                            std::string str = std::to_string(playerData.team) + ":    KNOCK" ;
                            imDrawList->AddTextX(ImVec2(playerData.screen.x + 35 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 22 - hpHeight / 2 + 9), ImColor(0, 0, 0, 255), 15, str.c_str());
                            imDrawList->AddTextX(ImVec2(playerData.screen.x + 35 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 23 - hpHeight / 2 + 9), ImColor(216, 206, 206), 15, str.c_str());
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth3, playerData.screen.y - playerData.size.y-10  - hpHeight3}, {playerData.screen.x - hpWidth3 + (hpWidth3 *2), playerData.screen.y - playerData.size.y-43 }, ImColor(255, 165, 0));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth *2), playerData.screen.y - playerData.size.y-10 }, ImColor(142, 142, 138, 240));
                        } else {
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth3, playerData.screen.y - playerData.size.y-10  - hpHeight3}, {playerData.screen.x - hpWidth3 + (hpWidth3 *2), playerData.screen.y - playerData.size.y-43 }, ImColor(216, 206, 206));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth *2), playerData.screen.y - playerData.size.y-10 }, ImColor(142, 142, 138, 240));
                            imDrawList->AddRectFilled({playerData.screen.x - hpWidth, playerData.screen.y - playerData.size.y-10  - hpHeight}, {playerData.screen.x - hpWidth + (hpWidth * 2) * playerData.hp / 100, playerData.screen.y - playerData.size.y-10 }, ImColor(216, 235, 55, 120));
                        }
                        
                        //tên, cặp
                        std::string str = std::to_string(playerData.team) + ":     BOT" ;
                        imDrawList->AddTextX(ImVec2(playerData.screen.x + 35 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 22 - hpHeight / 2 + 9), ImColor(0, 0, 0, 255), 15, str.c_str());
                        imDrawList->AddTextX(ImVec2(playerData.screen.x + 35 - calcTextSize(std::string(playerData.name).c_str(), 19) / 2 - hpWidth + hpHeight + 4, playerData.screen.y - playerData.size.y - 23 - hpHeight / 2 + 9), ImColor(255, 255, 255), 15, str.c_str());
                        
                        
                    }
            
                      
                    //手持武器贴图
                    if (self.moduleControl->playerSwitch.SCStatus) {
                        if (playerData.weaponName=="Fist") {
                            imDrawList->AddImage((__bridge ImTextureID) quanTexture, ImVec2(playerData.screen.x+200 - qtWidth+1, playerData.screen.y-30 - playerData.size.y -5 - qtHeight+1), ImVec2(playerData.screen.x+200 - qtWidth+1 + qtHeight-2 , playerData.screen.y-30 - playerData.size.y -5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                        }
                        if (playerData.weaponName=="[Machine Gun] DP28") {
                            imDrawList->AddImage((__bridge ImTextureID) DP28Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Machine Gun] M249") {
                            imDrawList->AddImage((__bridge ImTextureID) M249Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Machine Gun] MG3") {
                            imDrawList->AddImage((__bridge ImTextureID) MG3Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Shotgun] S686") {
                            imDrawList->AddImage((__bridge ImTextureID) S686Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Shotgun] DBS") {
                            imDrawList->AddImage((__bridge ImTextureID) DBSTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Shotgun] S12K") {
                            imDrawList->AddImage((__bridge ImTextureID) S12KTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Submachine] Bison") {
                            imDrawList->AddImage((__bridge ImTextureID) YNTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] QBZ") {
                            imDrawList->AddImage((__bridge ImTextureID) QBZTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] M416") {
                            imDrawList->AddImage((__bridge ImTextureID) M416Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] QBU") {
                            imDrawList->AddImage((__bridge ImTextureID) QBUTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] SLR") {
                            imDrawList->AddImage((__bridge ImTextureID) SLRTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] SKS") {
                            imDrawList->AddImage((__bridge ImTextureID) SKSTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] Mini14") {
                            imDrawList->AddImage((__bridge ImTextureID) MINITexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] M24") {
                            imDrawList->AddImage((__bridge ImTextureID) M24Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] Kar98k") {
                            imDrawList->AddImage((__bridge ImTextureID) K98Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] AWM") {
                            imDrawList->AddImage((__bridge ImTextureID) AWMTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] Mk14") {
                            imDrawList->AddImage((__bridge ImTextureID) MK14Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] Mosin") {
                            imDrawList->AddImage((__bridge ImTextureID) MOTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Sniper] VSS") {
                            imDrawList->AddImage((__bridge ImTextureID) VSSTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Rifle] M762") {
                            imDrawList->AddImage((__bridge ImTextureID) M762Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] SCAR-L") {
                            imDrawList->AddImage((__bridge ImTextureID) SCARTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] M16A4") {
                            imDrawList->AddImage((__bridge ImTextureID) M16Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] Mk47") {
                            imDrawList->AddImage((__bridge ImTextureID) MK47Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] Groza") {
                            imDrawList->AddImage((__bridge ImTextureID) GrozaTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] AUG") {
                            imDrawList->AddImage((__bridge ImTextureID) AUGTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Rifle] AKM") {
                            imDrawList->AddImage((__bridge ImTextureID) AkmTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Throwing] Grenade") {
                            imDrawList->AddImage((__bridge ImTextureID) leiTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Throwing] Smoke") {
                            imDrawList->AddImage((__bridge ImTextureID) yanTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Throwing] Molotov cocktail") {
                            imDrawList->AddImage((__bridge ImTextureID) huoTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Melee] Pan") {
                            imDrawList->AddImage((__bridge ImTextureID) GUOTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Melee] Scythe") {
                            imDrawList->AddImage((__bridge ImTextureID) LIANTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Melee] Machete") {
                            imDrawList->AddImage((__bridge ImTextureID) DAOTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Melee] Crowbar") {
                            imDrawList->AddImage((__bridge ImTextureID) GUNTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Submachine] MP5K") {
                            imDrawList->AddImage((__bridge ImTextureID) MP5KTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Submachine] TommyGun") {
                            imDrawList->AddImage((__bridge ImTextureID) TANGTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Submachine] UMP9") {
                            imDrawList->AddImage((__bridge ImTextureID) UMP9Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Submachine] Uzi") {
                            imDrawList->AddImage((__bridge ImTextureID) UZITexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Submachine] Vector") {
                            imDrawList->AddImage((__bridge ImTextureID) VKTTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                        if (playerData.weaponName=="[Pistol] P92") {
                            imDrawList->AddImage((__bridge ImTextureID) P92Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Pistol] P1911") {
                            imDrawList->AddImage((__bridge ImTextureID) P1911Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Pistol] R1895") {
                            imDrawList->AddImage((__bridge ImTextureID) R1895Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Pistol] P18C") {
                            imDrawList->AddImage((__bridge ImTextureID) P18CTexture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        if (playerData.weaponName=="[Pistol] R45") {
                            imDrawList->AddImage((__bridge ImTextureID) R45Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                        }
                        
                    }
                    
                }
                if (self.moduleControl->playerSwitch.SCStatus2) {
                    if (playerData.weaponName=="Fist") {
                        imDrawList->AddImage((__bridge ImTextureID) quan2Texture, ImVec2(playerData.screen.x+200 - qtWidth+1, playerData.screen.y-30 - playerData.size.y -5 - qtHeight+1), ImVec2(playerData.screen.x+200 - qtWidth+1 + qtHeight-2 , playerData.screen.y-30 - playerData.size.y -5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                    }
//                        if (playerData.weaponName=="Knock") {
//                            imDrawList->AddImage((__bridge ImTextureID) quan2Texture, ImVec2(playerData.screen.x+200 - qtWidth+1, playerData.screen.y-30 - playerData.size.y -5 - qtHeight+1), ImVec2(playerData.screen.x+200 - qtWidth+1 + qtHeight-2 , playerData.screen.y-30 - playerData.size.y -5 - qtHeight + qtHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
//                    }
                    if (playerData.weaponName=="[Machine Gun] DP28") {
                        imDrawList->AddImage((__bridge ImTextureID) DP282Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Machine Gun] M249") {
                        imDrawList->AddImage((__bridge ImTextureID) M2492Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Machine Gun] MG3") {
                        imDrawList->AddImage((__bridge ImTextureID) MG32Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Shotgun] S686") {
                        imDrawList->AddImage((__bridge ImTextureID) S6862Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Shotgun] DBS") {
                        imDrawList->AddImage((__bridge ImTextureID) DBS2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Shotgun] S12K") {
                        imDrawList->AddImage((__bridge ImTextureID) S12K2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Submachine] Bison") {
                        imDrawList->AddImage((__bridge ImTextureID) YN2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] QBZ") {
                        imDrawList->AddImage((__bridge ImTextureID) QBZ2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] M416") {
                        imDrawList->AddImage((__bridge ImTextureID) M4162Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] QBU") {
                        imDrawList->AddImage((__bridge ImTextureID) QBU2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] SLR") {
                        imDrawList->AddImage((__bridge ImTextureID) SLR2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] SKS") {
                        imDrawList->AddImage((__bridge ImTextureID) SKS2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] Mini14") {
                        imDrawList->AddImage((__bridge ImTextureID) MINI2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] M24") {
                        imDrawList->AddImage((__bridge ImTextureID) M242Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] Kar98k") {
                        imDrawList->AddImage((__bridge ImTextureID) K982Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] AWM") {
                        imDrawList->AddImage((__bridge ImTextureID) AWM2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] Mk14") {
                        imDrawList->AddImage((__bridge ImTextureID) MK142Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] Mosin") {
                        imDrawList->AddImage((__bridge ImTextureID) MO2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Sniper] VSS") {
                        imDrawList->AddImage((__bridge ImTextureID) VSS2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Rifle] M762") {
                        imDrawList->AddImage((__bridge ImTextureID) M7622Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] SCAR-L") {
                        imDrawList->AddImage((__bridge ImTextureID) SCAR2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] M16A4") {
                        imDrawList->AddImage((__bridge ImTextureID) M162Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] Mk47") {
                        imDrawList->AddImage((__bridge ImTextureID) MK472Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] Groza") {
                        imDrawList->AddImage((__bridge ImTextureID) Groza2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] AUG") {
                        imDrawList->AddImage((__bridge ImTextureID) AUG2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Rifle] AKM") {
                        imDrawList->AddImage((__bridge ImTextureID) Akm2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Throwing] Smoke") {
                        imDrawList->AddImage((__bridge ImTextureID) yan2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Throwing] Molotov cocktail") {
                        imDrawList->AddImage((__bridge ImTextureID) huo2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Melee] Pan") {
                        imDrawList->AddImage((__bridge ImTextureID) GUO2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Melee] Scythe") {
                        imDrawList->AddImage((__bridge ImTextureID) LIAN2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Melee] Machete") {
                        imDrawList->AddImage((__bridge ImTextureID) DAO2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Melee] Crowbar") {
                        imDrawList->AddImage((__bridge ImTextureID) GUN2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Submachine] MP5K") {
                        imDrawList->AddImage((__bridge ImTextureID) MP5K2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Submachine] TommyGun") {
                        imDrawList->AddImage((__bridge ImTextureID) TANG2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Submachine] UMP9") {
                        imDrawList->AddImage((__bridge ImTextureID) UMP92Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Submachine] Uzi") {
                        imDrawList->AddImage((__bridge ImTextureID) UZI2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Submachine] Vector") {
                        imDrawList->AddImage((__bridge ImTextureID) VKT2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    
                    if (playerData.weaponName=="[Pistol] P92") {
                        imDrawList->AddImage((__bridge ImTextureID) P922Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Pistol] P1911") {
                        imDrawList->AddImage((__bridge ImTextureID) P19112Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Pistol] R1895") {
                        imDrawList->AddImage((__bridge ImTextureID) R18952Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Pistol] P18C") {
                        imDrawList->AddImage((__bridge ImTextureID) P18C2Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                    if (playerData.weaponName=="[Pistol] R45") {
                        imDrawList->AddImage((__bridge ImTextureID) R452Texture, ImVec2(playerData.screen.x+160 - scWidth+1, playerData.screen.y+2 - playerData.size.y -5 - scHeight+1), ImVec2(playerData. screen.x+160 - scWidth+1 + scHeight-2 , playerData.screen.y+2 - playerData.size.y -5 - scHeight + scHeight-1), ImVec2(0.0f, 0.0f), ImVec2(1.0f , 1.0f));
                    }
                }
            
        
                //vẽ tia
                if (self.moduleControl->playerSwitch.lineStatus) {
                    if (playerData.hp<=1){
                        imDrawList->AddLine(ImVec2(screenSize.width / 2, 120), ImVec2(playerData.screen.x, playerData.screen.y - playerData.size.y-90), ImColor(255,165,0), 2.0f);
                    }else{
                        imDrawList->AddLine(ImVec2(screenSize.width / 2, 120), ImVec2(playerData.screen.x, playerData.screen.y - playerData.size.y-90), color, 2.0f);
                    }
                }
                // vẽ hộp
                if (self.moduleControl->playerSwitch.boxStatus) {
                    if (playerData.hp<=1){
                        imDrawList->AddRect({playerData.screen.x - playerData.size.x, playerData.screen.y - playerData.size.y}, {playerData.screen.x + playerData.size.x, playerData.screen.y + playerData.size.y}, ImColor(255,165,0), 10.0f, 0, 2.0f);
                    }else{
                        imDrawList->AddRect({playerData.screen.x - playerData.size.x, playerData.screen.y - playerData.size.y}, {playerData.screen.x + playerData.size.x, playerData.screen.y + playerData.size.y}, color, 10.0f, 0, 2.0f);
                    }
                }
                // vẽ xương
                
                
                if (self.moduleControl->playerSwitch.boneStatus1) {
                    imDrawList->AddCircle(ImVec2(playerData.bonesData.head.x, playerData.bonesData.head.y),15,color, 0, 1.0f);
                }
                if (self.moduleControl->playerSwitch.boneStatus) {
                    imDrawList->AddLine({playerData.bonesData.head.x, playerData.bonesData.head.y}, {playerData.bonesData.pit.x, playerData.bonesData.pit.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.pit.x, playerData.bonesData.pit.y}, {playerData.bonesData.pelvis.x, playerData.bonesData.pelvis.y}, color, 2.0f);
                    
                    imDrawList->AddLine({playerData.bonesData.pit.x, playerData.bonesData.pit.y}, {playerData.bonesData.lcollar.x, playerData.bonesData.lcollar.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.lcollar.x, playerData.bonesData.lcollar.y}, {playerData.bonesData.lelbow.x, playerData.bonesData.lelbow.y}, color,2.0f);
                    imDrawList->AddLine({playerData.bonesData.lelbow.x, playerData.bonesData.lelbow.y}, {playerData.bonesData.lwrist.x, playerData.bonesData.lwrist.y}, color, 2.0f);
                    
                    imDrawList->AddLine({playerData.bonesData.pit.x, playerData.bonesData.pit.y}, {playerData.bonesData.rcollar.x, playerData.bonesData.rcollar.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.rcollar.x, playerData.bonesData.rcollar.y}, {playerData.bonesData.relbow.x, playerData.bonesData.relbow.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.relbow.x, playerData.bonesData.relbow.y}, {playerData.bonesData.rwrist.x, playerData.bonesData.rwrist.y}, color,2.0f);
                    
                    imDrawList->AddLine({playerData.bonesData.pelvis.x, playerData.bonesData.pelvis.y}, {playerData.bonesData.lthigh.x, playerData.bonesData.lthigh.y}, color,2.0f);
                    imDrawList->AddLine({playerData.bonesData.lthigh.x, playerData.bonesData.lthigh.y}, {playerData.bonesData.lknee.x, playerData.bonesData.lknee.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.lknee.x, playerData.bonesData.lknee.y}, {playerData.bonesData.lankle.x, playerData.bonesData.lankle.y}, color, 2.0f);
                    
                    imDrawList->AddLine({playerData.bonesData.pelvis.x, playerData.bonesData.pelvis.y}, {playerData.bonesData.rthigh.x, playerData.bonesData.rthigh.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.rthigh.x, playerData.bonesData.rthigh.y}, {playerData.bonesData.rknee.x, playerData.bonesData.rknee.y}, color, 2.0f);
                    imDrawList->AddLine({playerData.bonesData.rknee.x, playerData.bonesData.rknee.y}, {playerData.bonesData.rankle.x, playerData.bonesData.rankle.y}, color, 2.0f);
                }
            
            } else if (self.moduleControl->playerSwitch.backStatus) {// Cảnh báo sớm
                ImVec2 backAngle = rotateCoord(playerData.angle,ImVec2(320, 0));
                
                ImVec2 backAngle1 = rotateCoord(playerData.angle, ImVec2(325, 0));
                
                ImVec2 triangle1;
                triangle1 = rotateCoord(playerData.angle - 90, ImVec2(30, 0));
                triangle1.x += screenSize.width / 2 + backAngle.x;
                triangle1.y += screenSize.height / 2 + backAngle.y;
                
                ImVec2 triangle;
                triangle = rotateCoord(playerData.angle, ImVec2(40, 0));
                triangle.x += screenSize.width / 2 + backAngle.x;
                triangle.y += screenSize.height / 2 + backAngle.y;
                
                ImVec2 triangle2;
                triangle2 = rotateCoord(playerData.angle + 90, ImVec2(30, 0));
                triangle2.x += screenSize.width / 2 + backAngle.x;
                triangle2.y += screenSize.height / 2 + backAngle.y;
                
                if(playerData.hp<=1){
                    imDrawList->AddTriangleFilled(triangle1, triangle, triangle2, ImColor(255,165,0));//Tam giác
                    imDrawList->AddTriangle(triangle1, triangle, triangle2, ImColor(0, 0, 0, 255),2);
                }else{
                    imDrawList->AddTriangleFilled(triangle1, triangle, triangle2, color);//三角形
                    imDrawList->AddTriangle(triangle1, triangle, triangle2, ImColor(0, 0, 0, 255),2);
                }
                std::string str = std::to_string(playerData.distance);
                if (!playerData.robot) {//nguoithat
                    if (color == ImColor(0, 255, 0)) {
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2+1.5 + backAngle1.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 14.5), ImColor(0, 0, 0, 255), 30, str.c_str());
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2 + backAngle1.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 16), ImColor(255, 0, 0), 30, str.c_str());
                    } else {
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2+1.5 + backAngle1.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 14.5), ImColor(0, 0, 0, 255), 30, str.c_str());
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2 + backAngle1.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 16), ImColor(0, 255, 0), 30, str.c_str());
                        
                    }
                } else {
                    if (color == ImColor(0, 255, 0)) {
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2+1.5 + backAngle.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 14.5), ImColor(0, 0, 0, 255), 36, str.c_str());
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2 + backAngle.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 16), ImColor(255, 255, 255), 36, str.c_str());
                    } else {
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2+1.5 + backAngle.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 14.5), ImColor(0, 0, 0, 255), 36, str.c_str());
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2 + backAngle.x - calcTextSize(str.c_str(), 40) / 2, screenSize.height / 2 + backAngle.y - 16), ImColor(0, 255, 0), 36, str.c_str());
                    }
                }
            }
        }
                    
                    
//                     Vẽ số lượng người
                            imDrawList->AddImage((__bridge ImTextureID) count4Texture, ImVec2(screenSize.width / 2-95 - count4Texture.width / 2, 115), ImVec2(screenSize.width / 2-95 + count4Texture.width / 2, 115 + count4Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                            imDrawList->AddImage((__bridge ImTextureID) count5Texture, ImVec2(screenSize.width / 2+95 - count5Texture.width / 2, 115), ImVec2(screenSize.width / 2+95 + count5Texture.width / 2, 115 + count5Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                    /*
                     imDrawList->AddImage((__bridge ImTextureID) count4Texture, ImVec2(screenSize.width / 2 - count4Texture.width / 2, 60), ImVec2(screenSize.width / 2 + count4Texture.width / 2, 60 + count4Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                     */
                    if (playerCount == 0 && robotCount == 0) {//安全贴图
                        imDrawList->AddImage((__bridge ImTextureID) count1Texture, ImVec2(screenSize.width / 2 - count1Texture.width / 2, 114), ImVec2(screenSize.width / 2 + count1Texture.width / 2, 114 + count1Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                        std::string str = "SAFE";
                        imDrawList->AddTextX(ImVec2(screenSize.width / 2-42, 100.5 + countTexture.height / 2 - 65), ImColor(54, 255, 0),30, str.c_str());
                    } else {
                        if(robotCount == 0){//人机黄色警告
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 + 36.5, 101.5 + countTexture.height / 2 - 20), ImColor(0, 0, 0, 255),45, std::to_string(robotCount).c_str());
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 + 35, 100 + countTexture.height / 2 - 20), ImColor(0, 255, 0), 45, std::to_string(robotCount).c_str());
                        }else{
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 + 36.5, 101.5 + countTexture.height / 2 - 20), ImColor(0, 0, 0, 255),45, std::to_string(robotCount).c_str());
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 + 35, 100 + countTexture.height / 2 - 20), ImColor(255, 255, 0), 45, std::to_string(robotCount).c_str());
                            imDrawList->AddImage((__bridge ImTextureID) count3Texture, ImVec2(screenSize.width / 2 - count3Texture.width / 2, 114), ImVec2(screenSize.width / 2 + count3Texture.width / 2, 114 + count3Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                        }
                        if(playerCount == 0){//báo động đỏ thực sự
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 - calcTextSize(std::to_string(playerCount).c_str(), 40) - 33.5, 101.5 + countTexture.height / 2 - 20), ImColor(0, 0, 0, 255), 45, std::to_string(playerCount).c_str());
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 - calcTextSize(std::to_string(playerCount).c_str(), 40) - 35, 100 + countTexture.height / 2 - 20), ImColor(0, 255, 0), 45, std::to_string(playerCount).c_str());
                        }else{
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 - calcTextSize(std::to_string(playerCount).c_str(), 40) - 33.5, 101.5 + countTexture.height / 2 - 20), ImColor(0, 0, 0, 255), 45, std::to_string(playerCount).c_str());
                            imDrawList->AddTextX(ImVec2(screenSize.width / 2 - calcTextSize(std::to_string(playerCount).c_str(), 40) - 35, 100 + countTexture.height / 2 - 20), ImColor(255, 0, 0), 45, std::to_string(playerCount).c_str());
                            imDrawList->AddImage((__bridge ImTextureID) count2Texture, ImVec2(screenSize.width / 2 - count2Texture.width / 2, 114), ImVec2(screenSize.width / 2 + count2Texture.width / 2, 114 + count2Texture.height), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f));
                            //                std::string str = "!! Warning enemy is nearby !!";
                            //                imDrawList->AddTextX(ImVec2(screenSize.width / 3-60, 200.5 + countTexture.height / 2 - 65), ImColor(247, 4, 4),50, str.c_str());
                        } // 1 2 đi xuống
                    }
                }
                if (self.moduleControl->mainSwitch.aimbotStatus) {
                    if (self.moduleControl->aimbotController.showAimbotRadius) {
                        //自瞄圆圈
                        imDrawList->AddCircle(ImVec2(screenSize.width / 2, screenSize.height / 2), self.moduleControl->aimbotController.aimbotRadius, ImColor(0, 255, 255), 0, 1.0f);
                    }
                }
                
                
                
                ImGui::End();
            }
-(void)initImageTexture: (id<MTLDevice>)device {
    NSData *countData = [[NSData alloc] initWithBase64EncodedString:countDataBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    countTexture = [self loadImageTexture : device : (void*)[countData bytes] : [countData length]];
    
    NSData *countData1 = [[NSData alloc] initWithBase64EncodedString:countData1Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    count1Texture = [self loadImageTexture : device : (void*)[countData1 bytes] : [countData1 length]];
    
    NSData *countData2 = [[NSData alloc] initWithBase64EncodedString:countData2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    count2Texture = [self loadImageTexture : device : (void*)[countData2 bytes] : [countData2 length]];
    
    NSData *countData3 = [[NSData alloc] initWithBase64EncodedString:countData3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    count3Texture = [self loadImageTexture : device : (void*)[countData3 bytes] : [countData3 length]];
    
    NSData *countData4 = [[NSData alloc] initWithBase64EncodedString:countData4Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    count4Texture = [self loadImageTexture : device : (void*)[countData4 bytes] : [countData4 length]];
    
    NSData *countData5 = [[NSData alloc] initWithBase64EncodedString:countData5Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    count5Texture = [self loadImageTexture : device : (void*)[countData5 bytes] : [countData5 length]];
    
    NSData *quan = [[NSData alloc] initWithBase64EncodedString:quanBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    quanTexture = [self loadImageTexture : device : (void*)[quan bytes] : [quan length]];
    
    NSData *shoulei = [[NSData alloc] initWithBase64EncodedString:shouleiBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    shouleiTexture = [self loadImageTexture : device : (void*)[shoulei bytes] : [shoulei length]];
    
    NSData *playerData = [[NSData alloc] initWithBase64EncodedString:playerDataBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    playerTexture = [self loadImageTexture : device : (void*)[playerData bytes] : [playerData length]];
    
    NSData *robotData = [[NSData alloc] initWithBase64EncodedString:robotDataBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    robotTexture = [self loadImageTexture : device : (void*)[robotData bytes] : [robotData length]];
    //手持武器
    NSData *M416 = [[NSData alloc] initWithBase64EncodedString:M416Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M416Texture = [self loadImageTexture : device : (void*)[M416 bytes] : [M416 length]];
    
    NSData *M16 = [[NSData alloc] initWithBase64EncodedString:M16Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M16Texture = [self loadImageTexture : device : (void*)[M16 bytes] : [M16 length]];

    NSData *Groza = [[NSData alloc] initWithBase64EncodedString:GrozaBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    GrozaTexture = [self loadImageTexture : device : (void*)[Groza bytes] : [Groza length]];

    NSData *Akm = [[NSData alloc] initWithBase64EncodedString:AkmBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AkmTexture = [self loadImageTexture : device : (void*)[Akm bytes] : [Akm length]];

    NSData *SCAR = [[NSData alloc] initWithBase64EncodedString:SCARBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SCARTexture = [self loadImageTexture : device : (void*)[SCAR bytes] : [SCAR length]];

    NSData *MK47 = [[NSData alloc] initWithBase64EncodedString:MK47Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MK47Texture = [self loadImageTexture : device : (void*)[MK47 bytes] : [MK47 length]];

    NSData *AUG = [[NSData alloc] initWithBase64EncodedString:AUGBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AUGTexture = [self loadImageTexture : device : (void*)[AUG bytes] : [AUG length]];

    NSData *M762 = [[NSData alloc] initWithBase64EncodedString:M762Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M762Texture = [self loadImageTexture : device : (void*)[M762 bytes] : [M762 length]];
    
    NSData *QBZ = [[NSData alloc] initWithBase64EncodedString:QBZBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    QBZTexture = [self loadImageTexture : device : (void*)[QBZ bytes] : [QBZ length]];
    
    NSData *lei = [[NSData alloc] initWithBase64EncodedString:leiBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    leiTexture = [self loadImageTexture : device : (void*)[lei bytes] : [lei length]];
  
    NSData *huo = [[NSData alloc] initWithBase64EncodedString:huoBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    huoTexture = [self loadImageTexture : device : (void*)[huo bytes] : [huo length]];

    NSData *yan = [[NSData alloc] initWithBase64EncodedString:yanBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    yanTexture = [self loadImageTexture : device : (void*)[yan bytes] : [yan length]];

    NSData *shan = [[NSData alloc] initWithBase64EncodedString:shanBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    shanTexture = [self loadImageTexture : device : (void*)[shan bytes] : [shan length]];

    NSData *R1895 = [[NSData alloc] initWithBase64EncodedString:R1895Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    R1895Texture = [self loadImageTexture : device : (void*)[R1895 bytes] : [R1895 length]];

    NSData *P92 = [[NSData alloc] initWithBase64EncodedString:P92Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P92Texture = [self loadImageTexture : device : (void*)[P92 bytes] : [P92 length]];

    NSData *P1911 = [[NSData alloc] initWithBase64EncodedString:P1911Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P1911Texture = [self loadImageTexture : device : (void*)[P1911 bytes] : [P1911 length]];

    NSData *P18C = [[NSData alloc] initWithBase64EncodedString:P18CBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P18CTexture = [self loadImageTexture : device : (void*)[P18C bytes] : [P18C length]];

    NSData *R45 = [[NSData alloc] initWithBase64EncodedString:R45Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    R45Texture = [self loadImageTexture : device : (void*)[R45 bytes] : [R45 length]];
 
    NSData *SKS = [[NSData alloc] initWithBase64EncodedString:SKSBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SKSTexture = [self loadImageTexture : device : (void*)[SKS bytes] : [SKS length]];

    NSData *MINI = [[NSData alloc] initWithBase64EncodedString:MINIBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MINITexture = [self loadImageTexture : device : (void*)[MINI bytes] : [MINI length]];

    NSData *MK14 = [[NSData alloc] initWithBase64EncodedString:MK14Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MK14Texture = [self loadImageTexture : device : (void*)[MK14 bytes] : [MK14 length]];

    NSData *VSS = [[NSData alloc] initWithBase64EncodedString:VSSBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    VSSTexture = [self loadImageTexture : device : (void*)[VSS bytes] : [VSS length]];

    NSData *QBU = [[NSData alloc] initWithBase64EncodedString:QBUBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    QBUTexture = [self loadImageTexture : device : (void*)[QBU bytes] : [QBU length]];

    NSData *SLR = [[NSData alloc] initWithBase64EncodedString:SLRBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SLRTexture = [self loadImageTexture : device : (void*)[SLR bytes] : [SLR length]];

    NSData *AWM = [[NSData alloc] initWithBase64EncodedString:AWMBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AWMTexture = [self loadImageTexture : device : (void*)[AWM bytes] : [AWM length]];

    NSData *K98 = [[NSData alloc] initWithBase64EncodedString:K98Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    K98Texture = [self loadImageTexture : device : (void*)[K98 bytes] : [K98 length]];

    NSData *MO = [[NSData alloc] initWithBase64EncodedString:MOBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MOTexture = [self loadImageTexture : device : (void*)[MO bytes] : [MO length]];

    NSData *LIAN = [[NSData alloc] initWithBase64EncodedString:LIANBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    LIANTexture = [self loadImageTexture : device : (void*)[LIAN bytes] : [LIAN length]];

    NSData *GUN = [[NSData alloc] initWithBase64EncodedString:GUNBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    GUNTexture = [self loadImageTexture : device : (void*)[GUN bytes] : [GUN length]];
 
    NSData *DAO = [[NSData alloc] initWithBase64EncodedString:DAOBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DAOTexture = [self loadImageTexture : device : (void*)[DAO bytes] : [DAO length]];

    NSData *GUO = [[NSData alloc] initWithBase64EncodedString:GUOBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    GUOTexture = [self loadImageTexture : device : (void*)[GUO bytes] : [GUO length]];

    NSData *UZI = [[NSData alloc] initWithBase64EncodedString:UZIBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UZITexture = [self loadImageTexture : device : (void*)[UZI bytes] : [UZI length]];

    NSData *TANG = [[NSData alloc] initWithBase64EncodedString:TANGBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    TANGTexture = [self loadImageTexture : device : (void*)[TANG bytes] : [TANG length]];

    NSData *VKT = [[NSData alloc] initWithBase64EncodedString:VKTBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    VKTTexture = [self loadImageTexture : device : (void*)[VKT bytes] : [VKT length]];

    NSData *MP5K = [[NSData alloc] initWithBase64EncodedString:MP5KBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MP5KTexture = [self loadImageTexture : device : (void*)[MP5K bytes] : [MP5K length]];

    NSData *UMP9 = [[NSData alloc] initWithBase64EncodedString:UMP9Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UMP9Texture = [self loadImageTexture : device : (void*)[UMP9 bytes] : [UMP9 length]];

    NSData *YN = [[NSData alloc] initWithBase64EncodedString:YNBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    YNTexture = [self loadImageTexture : device : (void*)[YN bytes] : [YN length]];
    
    NSData *M24 = [[NSData alloc] initWithBase64EncodedString:M24Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M24Texture = [self loadImageTexture : device : (void*)[M24 bytes] : [M24 length]];

    NSData *DP28 = [[NSData alloc] initWithBase64EncodedString:DP28Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DP28Texture = [self loadImageTexture : device : (void*)[DP28 bytes] : [DP28 length]];

    NSData *MG3 = [[NSData alloc] initWithBase64EncodedString:MG3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MG3Texture = [self loadImageTexture : device : (void*)[MG3 bytes] : [MG3 length]];

    NSData *M249 = [[NSData alloc] initWithBase64EncodedString:M249Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M249Texture = [self loadImageTexture : device : (void*)[M249 bytes] : [M249 length]];

    NSData *DBS = [[NSData alloc] initWithBase64EncodedString:DBSBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DBSTexture = [self loadImageTexture : device : (void*)[DBS bytes] : [DBS length]];

    NSData *S686 = [[NSData alloc] initWithBase64EncodedString:S686Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    S686Texture = [self loadImageTexture : device : (void*)[S686 bytes] : [S686 length]];

    NSData *S12K = [[NSData alloc] initWithBase64EncodedString:S12KBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    S12KTexture = [self loadImageTexture : device : (void*)[S12K bytes] : [S12K length]];
//goc
    NSData *quan2 = [[NSData alloc] initWithBase64EncodedString:quan2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    quanTexture = [self loadImageTexture : device : (void*)[quan2 bytes] : [quan2 length]];
    
    NSData *M4162 = [[NSData alloc] initWithBase64EncodedString:M4162Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M4162Texture = [self loadImageTexture : device : (void*)[M4162 bytes] : [M4162 length]];

    NSData *M162 = [[NSData alloc] initWithBase64EncodedString:M162Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M162Texture = [self loadImageTexture : device : (void*)[M162 bytes] : [M162 length]];

    NSData *Groza2 = [[NSData alloc] initWithBase64EncodedString:Groza2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    Groza2Texture = [self loadImageTexture : device : (void*)[Groza2 bytes] : [Groza2 length]];

    NSData *Akm2 = [[NSData alloc] initWithBase64EncodedString:Akm2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    Akm2Texture = [self loadImageTexture : device : (void*)[Akm2 bytes] : [Akm2 length]];

    NSData *SCAR2 = [[NSData alloc] initWithBase64EncodedString:SCAR2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SCAR2Texture = [self loadImageTexture : device : (void*)[SCAR2 bytes] : [SCAR2 length]];

    NSData *MK472 = [[NSData alloc] initWithBase64EncodedString:MK472Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MK472Texture = [self loadImageTexture : device : (void*)[MK472 bytes] : [MK472 length]];

    NSData *AUG2 = [[NSData alloc] initWithBase64EncodedString:AUG2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AUG2Texture = [self loadImageTexture : device : (void*)[AUG2 bytes] : [AUG length]];

    NSData *M7622 = [[NSData alloc] initWithBase64EncodedString:M7622Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M7622Texture = [self loadImageTexture : device : (void*)[M7622 bytes] : [M7622 length]];

    NSData *QBZ2 = [[NSData alloc] initWithBase64EncodedString:QBZ2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    QBZ2Texture = [self loadImageTexture : device : (void*)[QBZ2 bytes] : [QBZ2 length]];

    NSData *lei2 = [[NSData alloc] initWithBase64EncodedString:lei2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    lei2Texture = [self loadImageTexture : device : (void*)[lei2 bytes] : [lei2 length]];

    NSData *huo2 = [[NSData alloc] initWithBase64EncodedString:huo2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    huo2Texture = [self loadImageTexture : device : (void*)[huo2 bytes] : [huo2 length]];

    NSData *yan2 = [[NSData alloc] initWithBase64EncodedString:yan2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    yan2Texture = [self loadImageTexture : device : (void*)[yan2 bytes] : [yan2 length]];

    NSData *shan2 = [[NSData alloc] initWithBase64EncodedString:shan2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    shan2Texture = [self loadImageTexture : device : (void*)[shan2 bytes] : [shan2 length]];

    NSData *R18952 = [[NSData alloc] initWithBase64EncodedString:R18952Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    R18952Texture = [self loadImageTexture : device : (void*)[R18952 bytes] : [R18952 length]];

    NSData *P922 = [[NSData alloc] initWithBase64EncodedString:P922Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P922Texture = [self loadImageTexture : device : (void*)[P922 bytes] : [P922 length]];

    NSData *P19112 = [[NSData alloc] initWithBase64EncodedString:P19112Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P19112Texture = [self loadImageTexture : device : (void*)[P19112 bytes] : [P19112 length]];

    NSData *P18C2 = [[NSData alloc] initWithBase64EncodedString:P18C2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    P18C2Texture = [self loadImageTexture : device : (void*)[P18C2 bytes] : [P18C2 length]];

    NSData *R452 = [[NSData alloc] initWithBase64EncodedString:R452Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    R452Texture = [self loadImageTexture : device : (void*)[R452 bytes] : [R452 length]];

    NSData *SKS2 = [[NSData alloc] initWithBase64EncodedString:SKS2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SKS2Texture = [self loadImageTexture : device : (void*)[SKS2 bytes] : [SKS2 length]];

    NSData *MINI2 = [[NSData alloc] initWithBase64EncodedString:MINI2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MINI2Texture = [self loadImageTexture : device : (void*)[MINI2 bytes] : [MINI2 length]];

    NSData *MK142 = [[NSData alloc] initWithBase64EncodedString:MK142Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MK142Texture = [self loadImageTexture : device : (void*)[MK142 bytes] : [MK142 length]];

    NSData *VSS2 = [[NSData alloc] initWithBase64EncodedString:VSS2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    VSS2Texture = [self loadImageTexture : device : (void*)[VSS2 bytes] : [VSS2 length]];

    NSData *QBU2 = [[NSData alloc] initWithBase64EncodedString:QBU2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    QBU2Texture = [self loadImageTexture : device : (void*)[QBU2 bytes] : [QBU2 length]];

    NSData *SLR2 = [[NSData alloc] initWithBase64EncodedString:SLR2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    SLR2Texture = [self loadImageTexture : device : (void*)[SLR2 bytes] : [SLR2 length]];

    NSData *AWM2 = [[NSData alloc] initWithBase64EncodedString:AWM2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AWM2Texture = [self loadImageTexture : device : (void*)[AWM2 bytes] : [AWM2 length]];

    NSData *K982 = [[NSData alloc] initWithBase64EncodedString:K982Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    K982Texture = [self loadImageTexture : device : (void*)[K982 bytes] : [K982 length]];

    NSData *MO2 = [[NSData alloc] initWithBase64EncodedString:MO2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MO2Texture = [self loadImageTexture : device : (void*)[MO2 bytes] : [MO2 length]];

    NSData *LIAN2 = [[NSData alloc] initWithBase64EncodedString:LIAN2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    LIAN2Texture = [self loadImageTexture : device : (void*)[LIAN2 bytes] : [LIAN2 length]];

    NSData *GUN2 = [[NSData alloc] initWithBase64EncodedString:GUN2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    GUN2Texture = [self loadImageTexture : device : (void*)[GUN2 bytes] : [GUN2 length]];

    NSData *DAO2 = [[NSData alloc] initWithBase64EncodedString:DAO2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DAO2Texture = [self loadImageTexture : device : (void*)[DAO2 bytes] : [DAO2 length]];

    NSData *GUO2 = [[NSData alloc] initWithBase64EncodedString:GUO2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    GUO2Texture = [self loadImageTexture : device : (void*)[GUO2 bytes] : [GUO2 length]];

    NSData *UZI2 = [[NSData alloc] initWithBase64EncodedString:UZI2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UZI2Texture = [self loadImageTexture : device : (void*)[UZI2 bytes] : [UZI2 length]];

    NSData *TANG2 = [[NSData alloc] initWithBase64EncodedString:TANG2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    TANG2Texture = [self loadImageTexture : device : (void*)[TANG2 bytes] : [TANG2 length]];

    NSData *VKT2 = [[NSData alloc] initWithBase64EncodedString:VKT2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    VKT2Texture = [self loadImageTexture : device : (void*)[VKT2 bytes] : [VKT2 length]];

    NSData *MP5K2 = [[NSData alloc] initWithBase64EncodedString:MP5K2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MP5K2Texture = [self loadImageTexture : device : (void*)[MP5K2 bytes] : [MP5K2 length]];

    NSData *UMP92 = [[NSData alloc] initWithBase64EncodedString:UMP92Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    UMP92Texture = [self loadImageTexture : device : (void*)[UMP92 bytes] : [UMP92 length]];

    NSData *YN2 = [[NSData alloc] initWithBase64EncodedString:YN2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    YN2Texture = [self loadImageTexture : device : (void*)[YN2 bytes] : [YN2 length]];

    NSData *M242 = [[NSData alloc] initWithBase64EncodedString:M242Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M242Texture = [self loadImageTexture : device : (void*)[M242 bytes] : [M242 length]];

    NSData *DP282 = [[NSData alloc] initWithBase64EncodedString:DP282Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DP282Texture = [self loadImageTexture : device : (void*)[DP282 bytes] : [DP282 length]];

    NSData *MG32 = [[NSData alloc] initWithBase64EncodedString:MG32Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    MG32Texture = [self loadImageTexture : device : (void*)[MG32 bytes] : [MG32 length]];

    NSData *M2492 = [[NSData alloc] initWithBase64EncodedString:M2492Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    M2492Texture = [self loadImageTexture : device : (void*)[M2492 bytes] : [M2492 length]];

    NSData *DBS2 = [[NSData alloc] initWithBase64EncodedString:DBS2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    DBS2Texture = [self loadImageTexture : device : (void*)[DBS2 bytes] : [DBS2 length]];

    NSData *S6862 = [[NSData alloc] initWithBase64EncodedString:S6862Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    S6862Texture = [self loadImageTexture : device : (void*)[S6862 bytes] : [S6862 length]];

    NSData *S12K2 = [[NSData alloc] initWithBase64EncodedString:S12K2Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    S12K2Texture = [self loadImageTexture : device : (void*)[S12K2 bytes] : [S12K2 length]];


    //载具
    NSData *JP = [[NSData alloc] initWithBase64EncodedString:JPBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    JPTexture = [self loadImageTexture : device : (void*)[JP bytes] : [JP length]];

    NSData *BB = [[NSData alloc] initWithBase64EncodedString:BBBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    BBTexture = [self loadImageTexture : device : (void*)[BB bytes] : [BB length]];

    NSData *jc = [[NSData alloc] initWithBase64EncodedString:jcBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    jcTexture = [self loadImageTexture : device : (void*)[jc bytes] : [jc length]];
    
    NSData *mtt = [[NSData alloc] initWithBase64EncodedString:mttBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mttTexture = [self loadImageTexture : device : (void*)[mtt bytes] : [mtt length]];
    
    NSData *mt = [[NSData alloc] initWithBase64EncodedString:mtBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mtTexture = [self loadImageTexture : device : (void*)[mt bytes] : [mt length]];
    
    NSData *my = [[NSData alloc] initWithBase64EncodedString:myBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    myTexture = [self loadImageTexture : device : (void*)[my bytes] : [my length]];
    
    NSData *R8 = [[NSData alloc] initWithBase64EncodedString:R8Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    R8Texture = [self loadImageTexture : device : (void*)[R8 bytes] : [R8 length]];
    
    NSData *mt3 = [[NSData alloc] initWithBase64EncodedString:mt3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mt3Texture = [self loadImageTexture : device : (void*)[mt3 bytes] : [mt3 length]];
    
    NSData *m416 = [[NSData alloc] initWithBase64EncodedString:m416Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    m416Texture = [self loadImageTexture : device : (void*)[m416 bytes] : [m416 length]];

    NSData *akm = [[NSData alloc] initWithBase64EncodedString:akmBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    akmTexture = [self loadImageTexture : device : (void*)[akm bytes] : [akm length]];
    
    NSData *aug = [[NSData alloc] initWithBase64EncodedString:augBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    augTexture = [self loadImageTexture : device : (void*)[aug bytes] : [aug length]];
    
    NSData *groza = [[NSData alloc] initWithBase64EncodedString:grozaBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    grozaTexture = [self loadImageTexture : device : (void*)[groza bytes] : [groza length]];
    
    NSData *m16 = [[NSData alloc] initWithBase64EncodedString:m16Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    m16Texture = [self loadImageTexture : device : (void*)[m16 bytes] : [m16 length]];
    
    NSData *m24 = [[NSData alloc] initWithBase64EncodedString:m24Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    m24Texture = [self loadImageTexture : device : (void*)[m24 bytes] : [m24 length]];
    
    NSData *m249 = [[NSData alloc] initWithBase64EncodedString:m249Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    m249Texture = [self loadImageTexture : device : (void*)[m249 bytes] : [m249 length]];
    
    NSData *m762 = [[NSData alloc] initWithBase64EncodedString:m762Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    m762Texture = [self loadImageTexture : device : (void*)[m762 bytes] : [m762 length]];
    
    NSData *mg3 = [[NSData alloc] initWithBase64EncodedString:mg3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mg3Texture = [self loadImageTexture : device : (void*)[mg3 bytes] : [mg3 length]];
    
    NSData *mini = [[NSData alloc] initWithBase64EncodedString:miniBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    miniTexture = [self loadImageTexture : device : (void*)[mini bytes] : [mini length]];
    
    NSData *mk14 = [[NSData alloc] initWithBase64EncodedString:mk14Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mk14Texture = [self loadImageTexture : device : (void*)[mk14 bytes] : [mk14 length]];
    
    NSData *mk47 = [[NSData alloc] initWithBase64EncodedString:mk47Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    mk47Texture = [self loadImageTexture : device : (void*)[mk47 bytes] : [mk47 length]];
    
    NSData *scar = [[NSData alloc] initWithBase64EncodedString:scarBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    scarTexture = [self loadImageTexture : device : (void*)[scar bytes] : [scar length]];
    
    NSData *slr = [[NSData alloc] initWithBase64EncodedString:slrBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    slrTexture = [self loadImageTexture : device : (void*)[slr bytes] : [slr length]];
    
    NSData *awm = [[NSData alloc] initWithBase64EncodedString:awmBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    awmTexture = [self loadImageTexture : device : (void*)[awm bytes] : [awm length]];
    
    NSData *dp28 = [[NSData alloc] initWithBase64EncodedString:dp28Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    dp28Texture = [self loadImageTexture : device : (void*)[dp28 bytes] : [dp28 length]];
    
    NSData *k98 = [[NSData alloc] initWithBase64EncodedString:k98Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    k98Texture = [self loadImageTexture : device : (void*)[k98 bytes] : [k98 length]];
    
    NSData *vss = [[NSData alloc] initWithBase64EncodedString:vssBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    vssTexture = [self loadImageTexture : device : (void*)[vss bytes] : [vss length]];
    
    NSData *sks = [[NSData alloc] initWithBase64EncodedString:sksBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    sksTexture = [self loadImageTexture : device : (void*)[sks bytes] : [sks length]];
    
    NSData *hz = [[NSData alloc] initWithBase64EncodedString:hzBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    hzTexture = [self loadImageTexture : device : (void*)[hz bytes] : [hz length]];
    
    
    NSData *yl = [[NSData alloc] initWithBase64EncodedString:ylBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    ylTexture = [self loadImageTexture : device : (void*)[yl bytes] : [yl length]];

    NSData *jjb = [[NSData alloc] initWithBase64EncodedString:jjbBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    jjbTexture = [self loadImageTexture : device : (void*)[jjb bytes] : [jjb length]];
    
    NSData *zty = [[NSData alloc] initWithBase64EncodedString:ztyBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    ztyTexture = [self loadImageTexture : device : (void*)[zty bytes] : [zty length]];
    
    NSData *zhen = [[NSData alloc] initWithBase64EncodedString:zhenBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    zhenTexture = [self loadImageTexture : device : (void*)[zhen bytes] : [zhen length]];
    
    NSData *ylx = [[NSData alloc] initWithBase64EncodedString:ylxBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    ylxTexture = [self loadImageTexture : device : (void*)[ylx bytes] : [ylx length]];
    
    NSData *b4 = [[NSData alloc] initWithBase64EncodedString:b4Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    b4Texture = [self loadImageTexture : device : (void*)[b4 bytes] : [b4 length]];

    NSData *b3 = [[NSData alloc] initWithBase64EncodedString:b3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    b3Texture = [self loadImageTexture : device : (void*)[b3 bytes] : [b3 length]];

    NSData *b6 = [[NSData alloc] initWithBase64EncodedString:b6Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    b6Texture = [self loadImageTexture : device : (void*)[b6 bytes] : [b6 length]];

    NSData *b8 = [[NSData alloc] initWithBase64EncodedString:b8Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    b8Texture = [self loadImageTexture : device : (void*)[b8 bytes] : [b8 length]];

    NSData *kt = [[NSData alloc] initWithBase64EncodedString:ktBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    ktTexture = [self loadImageTexture : device : (void*)[kt bytes] : [kt length]];

    NSData *t3 = [[NSData alloc] initWithBase64EncodedString:t3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    t3Texture = [self loadImageTexture : device : (void*)[t3 bytes] : [t3 length]];

    NSData *j3 = [[NSData alloc] initWithBase64EncodedString:j3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    j3Texture = [self loadImageTexture : device : (void*)[j3 bytes] : [j3 length]];

    NSData *bb3 = [[NSData alloc] initWithBase64EncodedString:bb3Base64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    bb3Texture = [self loadImageTexture : device : (void*)[bb3 bytes] : [bb3 length]];

    NSData *tlei = [[NSData alloc] initWithBase64EncodedString:tleiBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    tleiTexture = [self loadImageTexture : device : (void*)[tlei bytes] : [tlei length]];

    NSData *tyan = [[NSData alloc] initWithBase64EncodedString:tyanBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    tyanTexture = [self loadImageTexture : device : (void*)[tyan bytes] : [tyan length]];

    NSData *thuo = [[NSData alloc] initWithBase64EncodedString:thuoBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    thuoTexture = [self loadImageTexture : device : (void*)[thuo bytes] : [thuo length]];

    NSData *leizha = [[NSData alloc] initWithBase64EncodedString:leizhaBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    leizhaTexture = [self loadImageTexture : device : (void*)[leizha bytes] : [leizha length]];

    NSData *hongzha = [[NSData alloc] initWithBase64EncodedString:hongzhaBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    hongzhaTexture = [self loadImageTexture : device : (void*)[hongzha bytes] : [hongzha length]];

    NSData *sld = [[NSData alloc] initWithBase64EncodedString:sldBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    sldTexture = [self loadImageTexture : device : (void*)[sld bytes] : [sld length]];

    NSData *ywd = [[NSData alloc] initWithBase64EncodedString:ywdBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    ywdTexture = [self loadImageTexture : device : (void*)[ywd bytes] : [ywd length]];

    NSData *rsp = [[NSData alloc] initWithBase64EncodedString:rspBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    rspTexture = [self loadImageTexture : device : (void*)[rsp bytes] : [rsp length]];


}

-(id<MTLTexture>)loadImageTexture:(id<MTLDevice>)device :(void*) imageData :(size_t) fileDataSize {
    int width, height;
    unsigned char *pixels = stbi_load_from_memory((stbi_uc const *)imageData, (int)fileDataSize, &width, &height, NULL, 4);

    MTLTextureDescriptor *textureDescriptor = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:MTLPixelFormatRGBA8Unorm
                                                                                                 width:(NSUInteger)width
                                                                                                height:(NSUInteger)height
                                                                                             mipmapped:NO];
    textureDescriptor.usage = MTLTextureUsageShaderRead;
    textureDescriptor.storageMode = MTLStorageModeShared;
    id<MTLTexture> texture = [device newTextureWithDescriptor:textureDescriptor];
    [texture replaceRegion:MTLRegionMake2D(0, 0, (NSUInteger)width, (NSUInteger)height) mipmapLevel:0 withBytes:pixels bytesPerRow:(NSUInteger)width * 4];
    
    return texture;
}


+ (void)feature1:(nonnull UISwitch *)SW1 {
}





@end
