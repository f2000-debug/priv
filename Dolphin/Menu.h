//  MenuWindow.h
//  Dolphins
//
//  t.me/UltimateEngine
//

#import <UIKit/UIKit.h>



#include "imgui.h"

#include "module_tools.h"

#include "imgui_tools.h"

#include "ini_rw.h"

@class OverlayView;

NS_ASSUME_NONNULL_BEGIN

@interface mi : NSObject

@property (nonatomic, assign) ModuleControl *moduleControl;


- (instancetype)initWithFrame:(ModuleControl*)control;

-(void)setOverlayView:(OverlayView*)ov;
//绘制Menu窗口
-(void)drawMenuWindow;
//显示系统信息页面
-(void)showSystemInfo;
//人物功能控制
-(void) showPlayerControl;
//物资功能控制
-(void) showMaterialControl;
//自瞄控制
-(void) showAimbotControl;
//系统公告
-(void) showsystemproclamation;
//读Ini配置
-(void)readIniConfig;

//-(void) showMemory;

-(void) showSkin;

//-(void) showMORE;

- (void) drawInMTKView;
-(void)buttonfast;
-(void)hiddenfast;


-(void)drawInMTKView;

//-(void) showAnti;



@end

NS_ASSUME_NONNULL_END
