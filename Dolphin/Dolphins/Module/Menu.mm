//
//  MenuWindow.m
//  Dolphins
//

#import "Menu.h"
#import "OverlayView.h"
#import "mahoa.h"
#import "vm_writeData.h"
#include <JRMemory/MemScan.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "HeeeNoScreenShotView.h"
#import <mach/mach.h>
#import <mach/mach_host.h>
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>
//#import "A1/FTNotificationIndicator.h"
//#import "A1/FCUUID.h"
//#import "UIView+Toast.h"
//#import "A1/DTTJailbreakDetection.h"
//#import "MBProgressHUD+MJ.h"
//#import "MBProgressHUD.h"
////#import "MBProgressHUD.m"
//#import "FTNotificationIndicator.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define kWidth  [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height
bool 引擎绘制 = false;
@implementation mi
INI* config;
const char *optionItemName[] = {"MAIN", "ESP", "ITEM", "AIMBOT", "SKIN"};
int optionItemCurrent = 0;
//Self-aiming part text
int aimbotIntensity;
const char *aimbotIntensityText[] = {"micro","Low", "middle", "high", "super high", "strong lock", "lock up"};
//Self-aiming part text
const char *aimbotModeText[] = {"Scope start", "fire start", "scope fire start", "Automatic mode start", "touch position start"};
//Self-aiming part text
const char *aimbotPartsText[] = {"priority head (missed)", "priority body)", "Automatic mode (missed)", "fixed head", "fixed body"};
//Self-skin part text
//int aimbotIntensity;
int skinIntensity;
const char *skinIntensityText[] = {"Mac dinh","Xac uop trang", "Mudinh", "Balo He"};

const char *espIntensityText[] = {"Defu","ESP 1", "ESP 2", "ESP 3"};

UIWindow *Esp;
UIButton *viewfast;
UIWindow *mainWindowa;
NSString *jail;
NSString *namedv;
NSString *deviceType;
NSString *bundle;
NSString *ver;
NSString *iosdv;
NSString* uuidRes;
NSString* uuidResba;
NSString *key;
NSUserDefaults *checka;
UIButton *view;
HeeeNoScreenShotView *HideEsp;





OverlayView *overlayView;

- (instancetype)initWithFrame:(ModuleControl*)control {
    self.moduleControl = control;
    //Obtain Documents directory path
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    //Initialize the file manager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //concatenate file path
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:@"dolphins.ini"];
    //file does not exist
    if(![fileManager fileExistsAtPath:filePath]){
        //Create a file
        [fileManager createFileAtPath:filePath contents:[NSData data] attributes:nil];
    }
    //Get ini file data
    config = ini_load((char*)filePath.UTF8String);
    
    return [super init];
    
    

    
    
    
    
}






-(void)setOverlayView:(OverlayView*)ov{
    overlayView = ov;
    //Read configuration items
    [self readIniConfig];

//}
//- (void)drawInMTKView:(MTKView*)view
//{
//
//
//    ImGuiIO& io = ImGui::GetIO();
//    io.DisplaySize.x = view.bounds.size.width;
//    io.DisplaySize.y = view.bounds.size.height;
//
//    CGFloat framebufferScale = view.window.screen.scale ?: UIScreen.mainScreen.scale;
//    io.DisplayFramebufferScale = ImVec2(framebufferScale, framebufferScale);
//    io.DeltaTime = 1 / float(view.preferredFramesPerSecond ?: 60);
//
}

//- (MTKView *)mtkView
//{
//    return (OverlayView *)self.moduleControl->menuStatus;
//}








    
-(void)drawMenuWindow {
    

    HeeeNoScreenShotView *noScreenShotView = [[HeeeNoScreenShotView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];

     [noScreenShotView setUserInteractionEnabled:NO];

    [[[[UIApplication sharedApplication] windows]lastObject] addSubview:noScreenShotView];


    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{



        CGFloat width = SCREEN_WIDTH * 0.5;
        CGFloat height = SCREEN_HEIGHT * 0.5;

        if (SCREEN_WIDTH > SCREEN_HEIGHT) {

            height = SCREEN_HEIGHT * 0.5;

        } else {

            width = SCREEN_WIDTH * 0.5;
        }

        HideEsp = [[HeeeNoScreenShotView alloc] initWithFrame:CGRectMake(0, 0, 0,0)];
        HideEsp.userInteractionEnabled = NO;
        Esp = [UIApplication sharedApplication].keyWindow;
//        [Esp addSubview:HideEsp];


        ImGuiIO & io = ImGui::GetIO();
        

        
ImGui::SetNextWindowSize({1330, 740}, ImGuiCond_FirstUseEver);
//    ImGui::SetNextWindowPos({172, 172}, ImGuiCond_FirstUseEver);
ImGui::SetNextWindowPos(ImVec2(io.DisplaySize.x * 0.5f, io.DisplaySize.y * 0.5f), 0, ImVec2(0.5f, 0.5f));  //居中处理;
});



    //Set the size of the next window
    ImGui::SetNextWindowSize({1280, 700}, ImGuiCond_FirstUseEver);
    ImGui::SetNextWindowPos({172, 172}, ImGuiCond_FirstUseEver);
    //window
    if (ImGui::Begin("                                        CRIOS", &self.moduleControl->menuStatus, ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoResize)) {
        ImGuiContext& g = *GImGui;
        if(g.NavWindow == NULL){
            self.moduleControl->menuStatus = !self.moduleControl->menuStatus;
        }
        //Set the width of the next control
        ImGui::BeginChild("##optionLayout", {calcTextSize("option layout") + 32.0f, 0}, false, ImGuiWindowFlags_None);
        for (int i = 0; i < 5; ++i) {
            if (optionItemCurrent != i) {
                ImGui::PushStyleColor(ImGuiCol_Button, ImColor(94, 189, 255, 150).Value);
                ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImColor(94, 189, 255, 250).Value);
                ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImColor(94, 189, 255, 250).Value);
            }
            bool isClick = ImGui::Button(optionItemName[i]);
            if (optionItemCurrent != i) {
                ImGui::PopStyleColor(3);
            }
            if (isClick) {
                optionItemCurrent = i;
            }
        }
        ImGui::EndChild();
        //the same line
        ImGui::SameLine();
        ImGui::BeginChild("##surfaceLayout", {0, 0}, false, ImGuiWindowFlags_None);
        switch (optionItemCurrent) {
            case 0:
                [self showSystemInfo];
                break;
            case 1:
                [self showPlayerControl];
                break;
            case 2:
                [self showMaterialControl];
                break;
            case 3:
                [self showAimbotControl];
                break;
            case 4:
                [self showSkin];
                break;
//            case 5:
//                [self showMemory];
//                break;
//            case 6:
//                [self showMORE];
//                break;
        }
        ImGui::EndChild();
        
        
        ImGui::End();
    }
}


-(void)showSystemInfo {
    mach_port_t host_port;
            mach_msg_type_number_t host_size;
            vm_size_t pagesize;

            host_port = mach_host_self();
            host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
            host_page_size(host_port, &pagesize);

            vm_statistics_data_t vm_stat;

            if (host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size) != KERN_SUCCESS) {
            //Lỗi
            }

            natural_t mem_used = (vm_stat.active_count +
                  vm_stat.inactive_count +
                  vm_stat.wire_count) * pagesize;
            natural_t mem_free = vm_stat.free_count * pagesize;
            natural_t mem_total = mem_used + mem_free;


            UIDevice *myDevice = [UIDevice currentDevice];
            [myDevice setBatteryMonitoringEnabled:YES];

            int state = [myDevice batteryState];
            NSLog(@"battery status: %d",state);
            int batLeft = (float)[myDevice batteryLevel] * 100;
           kern_return_t kr;
            task_info_data_t tinfo;
            mach_msg_type_number_t task_info_count;

            task_info_count = TASK_INFO_MAX;
            kr = task_info(mach_task_self(), TASK_BASIC_INFO, (task_info_t)tinfo, &task_info_count);
            if (kr != KERN_SUCCESS)
            {

            }

            task_basic_info_t      basic_info;
            thread_array_t         thread_list;
            mach_msg_type_number_t thread_count;
            thread_info_data_t     thinfo;
            mach_msg_type_number_t thread_info_count;
            thread_basic_info_t basic_info_th;
            uint32_t stat_thread = 0; // Mach threads

            basic_info = (task_basic_info_t)tinfo;

            // get threads in the task
            kr = task_threads(mach_task_self(), &thread_list, &thread_count);
            if (kr != KERN_SUCCESS)
            {

            }
            if (thread_count > 0)
            stat_thread += thread_count;

            long tot_sec = 0;
            long tot_usec = 0;
            float tot_cpu = 0;
            int j;

            for (j = 0; j < thread_count; j++)
            {
            thread_info_count = THREAD_INFO_MAX;
            kr = thread_info(thread_list[j], THREAD_BASIC_INFO,
             (thread_info_t)thinfo, &thread_info_count);
            if (kr != KERN_SUCCESS)
            {

            }

            basic_info_th = (thread_basic_info_t)thinfo;

            if (!(basic_info_th->flags & TH_FLAGS_IDLE))
            {
            //This is 0
            tot_sec = tot_sec + basic_info_th->user_time.seconds + basic_info_th->system_time.seconds;

            //This is 0
            tot_usec = tot_usec + basic_info_th->system_time.microseconds + basic_info_th->system_time.microseconds;

            //This is total
            tot_cpu = tot_cpu + basic_info_th->cpu_usage / (float)TH_USAGE_SCALE * 100.0;
            }

            } // for each thread

            kr = vm_deallocate(mach_task_self(), (vm_offset_t)thread_list, thread_count * sizeof(thread_t));
            assert(kr == KERN_SUCCESS);

            //return [NSString stringWithFormat:@"%.2f",tot_cpu];






NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];

            [DateFormatter setDateFormat:@"hh:mm:ss , d MMMM, yyyy"];

            
            NSString *datetime=[NSString stringWithFormat:NSSENCRYPT("%@"),[DateFormatter stringFromDate:[NSDate date]]];

            char* sdatetime = (char*) [datetime cStringUsingEncoding:NSUTF8StringEncoding];

            ImGui::TextColored(ImColor(102,255,255), "%s", sdatetime);

            ImGui::Separator();




            ImGui::TextColored(ImColor(0,255,0), "Ram Total: %uMB", mem_total/(1024*1024));

                ImGui::SameLine();

ImGui::TextColored(ImColor(120,255,0), "ms/frame: %.3f", 500.0f / ImGui::GetIO().Framerate);



            ImGui::TextColored(ImColor(255,255,0), "Used: %uMB", mem_used/(1024*1024));
ImGui::SameLine();

            ImGui::TextColored(ImColor(0,255,0), "FPS: %.1f", ImGui::GetIO().Framerate);


            ImGui::TextColored(ImColor(255,178,102), "Free: %uMB", mem_free/(1024*1024));

ImGui::SameLine();
            ImGui::TextColored(ImColor(100,255,20), "Total CPU: %.2f", tot_cpu);


    ImGui::TextColored(ImColor(0,178,102), "Battery: %d", batLeft);
    ImGui::SameLine();
    if(state == 1){
    ImGui::TextColored(ImColor(102,255,102), "Unplegged");
    }else if(state == 2){
    ImGui::TextColored(ImColor(255,255,51), "Charging");
    }else if(state == 3){
    ImGui::TextColored(ImColor(0,255,0), "Full");
    }else if(state == 0){
    ImGui::TextColored(ImColor(255,0,0), "Unknown");
    }

            ImGui::Separator();



    
    ImGui::BulletColorText(ImColor(2241, 184, 32).Value, "IPAD VIEW button on the screen");
    if (ImGui::Button("Show Button"))
    {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            //path gì thì path ở đây nhé!
            
            [self buttonfast];
            
        });
    }
    ImGui::SameLine();
    if (ImGui::Button("Hide Button"))
    {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            //path gì thì path ở đây nhé!
            
            [self hiddenfast];
            
        });
    }
    ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(32.0f, 32.0f));
    ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Antiban");
    if (ImGui::Checkbox("BYPASS LOBBY", &self.moduleControl->mainSwitch.anti1))
        configManager::putBoolean(config,"mainSwitch", "antiblocking", self.moduleControl->mainSwitch.anti1);
    
    if (self.moduleControl->mainSwitch.anti1) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{

//            vm_writeData(0x1034cb32c, 0xC0035FD6);
//            vm_writeData(0x103d51508, 0xC0035FD6);
            vm_writeData(0x103c03220, 0xC0035FD6);
        });
    }
    if (self.moduleControl->mainSwitch.anti1) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            JRMemoryEngine engine = JRMemoryEngine(mach_task_self());
            AddrRange range = (AddrRange){0x100000000,0x160000000};
            uint32_t search = 99900000;
            engine.JRScanMemory(range, &search, JR_Search_Type_UInt);
            vector<void*>results = engine.getAllResults();
            uint32_t modify = 3;
            for(int i =0;i<results.size();i++){
                engine.JRWriteMemory((unsigned long long)(results[i]),&modify,JR_Search_Type_UInt);
            }
        });
    }
    ImGui::PopStyleVar();
    
    ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "control switch");
    if (ImGui::Checkbox("Open Esp", &self.moduleControl->mainSwitch.playerStatus)) {
        configManager::putBoolean(config,"mainSwitch", "player", self.moduleControl->mainSwitch.playerStatus);
    }
    ImGui::SameLine();
    if (ImGui::Checkbox("Open Item", &self.moduleControl->mainSwitch.materialStatus)) {
        configManager::putBoolean(config,"mainSwitch", "material", self.moduleControl->mainSwitch.materialStatus);
    }
    ImGui::SameLine();
    if (ImGui::Checkbox("Open Aim", &self.moduleControl->mainSwitch.aimbotStatus)) {
        configManager::putBoolean(config,"mainSwitch", "aimbot", self.moduleControl->mainSwitch.aimbotStatus);
    }
    if (ImGui::Checkbox("engine", &引擎绘制)) {}
    ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "FPS");
    if (ImGui::RadioButton("60FPS", &self.moduleControl->fps, 0)) {
        configManager::putInteger(config,"mainSwitch", "fps",self.moduleControl->fps);
        overlayView.preferredFramesPerSecond = 60;
    }
    ImGui::SameLine();
    if (ImGui::RadioButton("90FPS", &self.moduleControl->fps, 1)) {
        configManager::putInteger(config,"mainSwitch", "fps",self.moduleControl->fps);
        overlayView.preferredFramesPerSecond = 90;
    }
    ImGui::SameLine();
    if (ImGui::RadioButton("120FPS", &self.moduleControl->fps, 2)) {
        configManager::putInteger(config,"mainSwitch", "fps",self.moduleControl->fps);
        overlayView.preferredFramesPerSecond = 120;
    }ImGui::SameLine();
    if (ImGui::Checkbox("ON SCREEN", &self.moduleControl->mainSwitch.fpsonsc)) {
        configManager::putBoolean(config,"mainSwitch", "player", self.moduleControl->mainSwitch.fpsonsc);
    }
  
    ImGui::Text("Frame Rate [ %.1fMs / %.1fFps ]", 1000 / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
    
    

    

    
    

}
    
    -(void) showPlayerControl {
        
        
        ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Draw player");
        if (ImGui::Checkbox("Icon Status", &self.moduleControl->playerSwitch.SCStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_6", self.moduleControl->playerSwitch.SCStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Icon Status 2", &self.moduleControl->playerSwitch.SCStatus2)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_12", self.moduleControl->playerSwitch.SCStatus2);
        }
        if (ImGui::Checkbox("Text Status", &self.moduleControl->playerSwitch.SCWZStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_7", self.moduleControl->playerSwitch.SCWZStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Item Icon", &self.moduleControl->playerSwitch.WZStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_8", self.moduleControl->playerSwitch.WZStatus);
        }
        
        if (ImGui::Checkbox("Item Text", &self.moduleControl->playerSwitch.WZWZStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_9", self.moduleControl->playerSwitch.WZWZStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Radar", &self.moduleControl->playerSwitch.radarStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_4", self.moduleControl->playerSwitch.radarStatus);
        }
        
        ImGui::SameLine();
        if (ImGui::Checkbox("Warning Behind", &self.moduleControl->playerSwitch.backStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_5", self.moduleControl->playerSwitch.backStatus);
        }
        
        
        if (ImGui::Checkbox("Line", &self.moduleControl->playerSwitch.lineStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_2", self.moduleControl->playerSwitch.lineStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Info", &self.moduleControl->playerSwitch.infoStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_3", self.moduleControl->playerSwitch.infoStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Box", &self.moduleControl->playerSwitch.boxStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_0", self.moduleControl->playerSwitch.boxStatus);
        }
        
        ImGui::SameLine();
        if (ImGui::Checkbox("Bone", &self.moduleControl->playerSwitch.boneStatus)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_1", self.moduleControl->playerSwitch.boneStatus);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Head", &self.moduleControl->playerSwitch.boneStatus1)) {
            configManager::putBoolean(config,"playerSwitch", "playerSwitch_11", self.moduleControl->playerSwitch.boneStatus1);
        }
        
        ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Radar adjust");
        
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() - calcTextSize("Radar X") - 32.0f);
        if (ImGui::SliderFloat("radar X##radarX", &self.moduleControl->playerSwitch.radarCoord.x, 0.0f, ([UIScreen mainScreen].bounds.size.width * [UIScreen mainScreen].nativeScale), "%.0f")) {
            configManager::putFloat(config,"playerSwitch", "radarX", self.moduleControl->playerSwitch.radarCoord.x);
        }
        
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() - calcTextSize("Radar Y") - 32.0f);
        if (ImGui::SliderFloat("radar Y##radarY", &self.moduleControl->playerSwitch.radarCoord.y, 0.0f, ([UIScreen mainScreen].bounds.size.height * [UIScreen mainScreen].nativeScale), "%.0f")) {
            configManager::putFloat(config,"playerSwitch", "radarY", self.moduleControl->playerSwitch.radarCoord.y);
        }
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() - calcTextSize("Radar size") - 32.0f);
        if (ImGui::SliderFloat("radar size##radarSize", &self.moduleControl->playerSwitch.radarSize, 1.0f, 100, "%.0f%%")) {
            configManager::putFloat(config,"playerSwitch", "RadarSize", self.moduleControl->playerSwitch.radarSize);
            
            
          
            
        }
        
        
    }
    
    -(void) showMaterialControl {
        ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Draw Item");
        
        if (ImGui::Checkbox("Rifle", &self.moduleControl->materialSwitch[Rifle])) {
            std::string str = "materialSwitch_" + std::to_string(Rifle);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Rifle]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Throw", &self.moduleControl->materialSwitch[Missile])) {
            std::string str = "materialSwitch_" + std::to_string(Missile);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Missile]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Armor", &self.moduleControl->materialSwitch[Armor])) {
            std::string str = "materialSwitch_" + std::to_string(Armor);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Armor]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Matching", &self.moduleControl->materialSwitch[SniperParts])) {
            std::string str = "materialSwitch_" + std::to_string(Sniper);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Sniper]);
        }
        
        if (ImGui::Checkbox("Riflepart", &self.moduleControl->materialSwitch[RifleParts])) {
            std::string str = "materialSwitch_" + std::to_string(RifleParts);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[RifleParts]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Drug", &self.moduleControl->materialSwitch[Drug])) {
            std::string str = "materialSwitch_" + std::to_string(Drug);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Drug]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Bullet", &self.moduleControl->materialSwitch[Bullet])) {
            std::string str = "materialSwitch_" + std::to_string(Bullet);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Bullet]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Grip", &self.moduleControl->materialSwitch[Grip])) {
            std::string str = "materialSwitch_" + std::to_string(Grip);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Grip]);
        }
        
        if (ImGui::Checkbox("Vehicle", &self.moduleControl->materialSwitch[Vehicle])) {
            std::string str = "materialSwitch_" + std::to_string(Vehicle);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Vehicle]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Airdrop", &self.moduleControl->materialSwitch[Airdrop])) {
            std::string str = "materialSwitch_" + std::to_string(Airdrop);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Airdrop]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Flare gun", &self.moduleControl->materialSwitch[FlareGun])) {
            std::string str = "materialSwitch_" + std::to_string(FlareGun);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[FlareGun]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Sniper", &self.moduleControl->materialSwitch[Sniper])) {
            std::string str = "materialSwitch_" + std::to_string(Sniper);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Sniper]);
        }
        
        if (ImGui::Checkbox("Sight", &self.moduleControl->materialSwitch[Sight])) {
            std::string str = "materialSwitch_" + std::to_string(Sight);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Sight]);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Grenade warning", &self.moduleControl->materialSwitch[Warning])) {
            std::string str = "materialSwitch_" + std::to_string(Warning);
            configManager::putBoolean(config,"materialSwitch", str.c_str(), self.moduleControl->materialSwitch[Warning]);
        }
    }
    
    -(void) showAimbotControl {
        ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Aimbot");
        
        
        
        if (ImGui::Checkbox("Fov", &self.moduleControl->aimbotController.showAimbotRadius)) {
            configManager::putBoolean(config,"aimbotControl", "showRadius", self.moduleControl->aimbotController.showAimbotRadius);
        }
        //   ImGui::SameLine();
        if (ImGui::Checkbox("Not Aim Nocked", &self.moduleControl->aimbotController.fallNotAim)) {
            configManager::putBoolean(config,"aimbotControl", "fall", self.moduleControl->aimbotController.fallNotAim);
        }
        ImGui::SameLine();
        if (ImGui::Checkbox("Not Aim in Smoke", &self.moduleControl->aimbotController.smoke)) {
            configManager::putBoolean(config,"aimbotControl", "smoke", self.moduleControl->aimbotController.smoke);
        }
        
        ImGui::SetNextItemWidth(calcTextSize("Streng Aiming"));
        if (ImGui::Combo("Streng Aiming", &aimbotIntensity, aimbotIntensityText, IM_ARRAYSIZE(aimbotIntensityText))) {
            configManager::putInteger(config,"aimbotControl", "intensity",aimbotIntensity);
            switch (aimbotIntensity) {
                case 0:
                    self.moduleControl->aimbotController.aimbotIntensity = 0.1f;
                    break;
                case 1:
                    self.moduleControl->aimbotController.aimbotIntensity = 0.2f;
                    break;
                case 2:
                    self.moduleControl->aimbotController.aimbotIntensity = 0.3f;
                    break;
                case 3:
                    self.moduleControl->aimbotController.aimbotIntensity = 0.4f;
                    break;
                case 4:
                    self.moduleControl->aimbotController.aimbotIntensity = 0.5f;
                    break;
                case 5:
                    self.moduleControl->aimbotController.aimbotIntensity = 1.0f;
                    break;
                case 6:
                    self.moduleControl->aimbotController.aimbotIntensity = 1.2f;
                    break;
            }
        }
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() / 2 - calcTextSize("Self-aiming mode") - 32.0f);
        if (ImGui::Combo("Aiming mode", &self.moduleControl->aimbotController.aimbotMode, aimbotModeText, IM_ARRAYSIZE(aimbotModeText))) {
            configManager::putInteger(config,"aimbotControl", "mode", self.moduleControl->aimbotController.aimbotMode);
        }
        //  ImGui::SameLine();
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() / 2 - calcTextSize("Self-aiming part") - 32.0f);
        if (ImGui::Combo("Aiming part", &self.moduleControl->aimbotController.aimbotParts, aimbotPartsText, IM_ARRAYSIZE(aimbotPartsText))) {
            configManager::putBoolean(config,"aimbotControl", "parts", self.moduleControl->aimbotController.aimbotParts);
        }
        
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() - calcTextSize("Aiming range") - 32.0f);
        if (ImGui::SliderFloat("Aiming range", &self.moduleControl->aimbotController.aimbotRadius, 0.0f, ([UIScreen mainScreen].bounds.size.height * [UIScreen mainScreen].nativeScale) / 2, "%.0f")) {
            configManager::putFloat(config,"aimbotControl", "radius", self.moduleControl->aimbotController.aimbotRadius);
        }
        
        ImGui::SetNextItemWidth(ImGui::GetWindowContentRegionWidth() - calcTextSize("Aiming distance limit") - 32.0f);
        if (ImGui::SliderFloat("Aiming distance", &self.moduleControl->aimbotController.distance, 0.0f, 450.0f, "%.0fM")) {
            configManager::putFloat(config,"aimbotControl", "distance", self.moduleControl->aimbotController.distance);
        }
        ImGui::BulletColorText(ImColor(214, 48, 25, 255).Value, "Self-aiming instructions");
        ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2(32.0f, 32.0f));
        ImGui::TextWrapped( "Automatic mode start：Single-shot guns are self-aiming，The repeating gun is self-aiming for firing\n Automatic mode parts：single shot head，Repeating gun chest");
        ImGui::PopStyleVar();
    }
    

    

    
    -(void)readIniConfig {
        
        self.moduleControl->fps = configManager::readInteger(config,"mainSwitch", "fps", 0);
        switch(self.moduleControl->fps){
            case 0:
                overlayView.preferredFramesPerSecond = 60;
                break;
            case 1:
                overlayView.preferredFramesPerSecond = 90;
                break;
            case 2:
                overlayView.preferredFramesPerSecond = 120;
                break;
            default:
                overlayView.preferredFramesPerSecond = 60;
                break;
        }
        //memory
        
        
        
        //Main switch
        self.moduleControl->mainSwitch.playerStatus = configManager::readBoolean(config,"mainSwitch", "player", false);
        self.moduleControl->mainSwitch.playerStatus2 = configManager::readBoolean(config,"mainSwitch", "playe2r", false);
        self.moduleControl->mainSwitch.playerStatus3 = configManager::readBoolean(config,"mainSwitch", "playe3r", false);
        self.moduleControl->mainSwitch.materialStatus = configManager::readBoolean(config,"mainSwitch", "material", false);
        self.moduleControl->mainSwitch.aimbotStatus = configManager::readBoolean(config,"mainSwitch", "aimbot", false);
        //character switch
        for (int i = 0; i < 10; ++i) {
            std::string str = "playerSwitch_" + std::to_string(i);
            *((bool *) &self.moduleControl->playerSwitch + sizeof(bool) * i) = configManager::readBoolean(config,"playerSwitch", str.c_str(), false);
        }
        //radar coordinates
        self.moduleControl->playerSwitch.radarSize = configManager::readFloat(config,"playerSwitch", "radarSize", 70);
        self.moduleControl->playerSwitch.radarCoord.x = configManager::readFloat(config,"playerSwitch", "radarX", 500);
        self.moduleControl->playerSwitch.radarCoord.y = configManager::readFloat(config,"playerSwitch", "radarY", 500);
        //material switch
        for (int i = 0; i < All; ++i) {
            std::string str = "materialSwitch_" + std::to_string(i);
            self.moduleControl->materialSwitch[i] = configManager::readBoolean(config,"materialSwitch", str.c_str(), false);
        }
        //Falling down without aiming
        self.moduleControl->aimbotController.fallNotAim = configManager::readBoolean(config,"aimbotControl", "fall", false);
        self.moduleControl->aimbotController.showAimbotRadius = configManager::readBoolean(config,"aimbotControl", "showRadius", true);
        self.moduleControl->aimbotController.aimbotRadius = configManager::readFloat(config,"aimbotControl", "radius", 500);
        
        self.moduleControl->aimbotController.smoke = configManager::readBoolean(config,"aimbotControl", "smoke", true);
        
        //Self-aiming mode
        self.moduleControl->aimbotController.aimbotMode = configManager::readInteger(config,"aimbotControl", "mode", 0);
        //Self-aiming part
        self.moduleControl->aimbotController.aimbotParts = configManager::readInteger(config,"aimbotControl", "parts", 0);
        //Self-aiming strength
        aimbotIntensity = configManager::readInteger(config,"aimbotControl", "intensity", 2);
        switch (aimbotIntensity) {
            case 0:
                self.moduleControl->aimbotController.aimbotIntensity = 0.1f;
                break;
            case 1:
                self.moduleControl->aimbotController.aimbotIntensity = 0.2f;
                break;
            case 2:
                self.moduleControl->aimbotController.aimbotIntensity = 0.3f;
                break;
            case 3:
                self.moduleControl->aimbotController.aimbotIntensity = 0.4f;
                break;
            case 4:
                self.moduleControl->aimbotController.aimbotIntensity = 0.5f;
                break;
            case 5:
                self.moduleControl->aimbotController.aimbotIntensity = 1.0f;
                break;
            case 6:
                self.moduleControl->aimbotController.aimbotIntensity = 1.2f;
                break;
        }
        //Self-aiming distance
        self.moduleControl->aimbotController.distance = configManager::readFloat(config,"aimbotControl", "distance", 450);
    }
    
    
   

@end
