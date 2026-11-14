#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:12 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function WebCameraFeed.WebCameraWidget.UnLockScreenOrientation
struct UWebCameraWidget_UnLockScreenOrientation_Params
{
};

// Function WebCameraFeed.WebCameraWidget.SwitchFrontAndBackCamera
struct UWebCameraWidget_SwitchFrontAndBackCamera_Params
{
	bool                                               ReturnValue;                                              // (Parm, OutParm, ZeroConstructor, ReturnParm, IsPlainOldData)
};

// Function WebCameraFeed.WebCameraWidget.SetDeviceId
struct UWebCameraWidget_SetDeviceId_Params
{
	int                                                ID;                                                       // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function WebCameraFeed.WebCameraWidget.SetColorAndOpacity
struct UWebCameraWidget_SetColorAndOpacity_Params
{
	struct FLinearColor                                InColorAndOpacity;                                        // (Parm, IsPlainOldData)
};

// Function WebCameraFeed.WebCameraWidget.SaveAsImage
struct UWebCameraWidget_SaveAsImage_Params
{
	struct FString                                     Filename;                                                 // (Parm, ZeroConstructor)
	bool                                               ReturnValue;                                              // (Parm, OutParm, ZeroConstructor, ReturnParm, IsPlainOldData)
};

// Function WebCameraFeed.WebCameraWidget.ReleaseVideoGrabber
struct UWebCameraWidget_ReleaseVideoGrabber_Params
{
};

// Function WebCameraFeed.WebCameraWidget.LockScreenOrientation
struct UWebCameraWidget_LockScreenOrientation_Params
{
};

// Function WebCameraFeed.WebCameraWidget.InitVideoGrabber
struct UWebCameraWidget_InitVideoGrabber_Params
{
};

// Function WebCameraFeed.WebCameraWidget.GetFrontCameraId
struct UWebCameraWidget_GetFrontCameraId_Params
{
	int                                                ReturnValue;                                              // (Parm, OutParm, ZeroConstructor, ReturnParm, IsPlainOldData)
};

// Function WebCameraFeed.WebCameraWidget.GetBackCameraId
struct UWebCameraWidget_GetBackCameraId_Params
{
	int                                                ReturnValue;                                              // (Parm, OutParm, ZeroConstructor, ReturnParm, IsPlainOldData)
};

}

