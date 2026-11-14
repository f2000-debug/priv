#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:20 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function CameraPostProcessActor.CameraPostProcessActor_C.UserConstructionScript
struct ACameraPostProcessActor_C_UserConstructionScript_Params
{
};

// Function CameraPostProcessActor.CameraPostProcessActor_C.Timeline_LerpPPSettings__FinishedFunc
struct ACameraPostProcessActor_C_Timeline_LerpPPSettings__FinishedFunc_Params
{
};

// Function CameraPostProcessActor.CameraPostProcessActor_C.Timeline_LerpPPSettings__UpdateFunc
struct ACameraPostProcessActor_C_Timeline_LerpPPSettings__UpdateFunc_Params
{
};

// Function CameraPostProcessActor.CameraPostProcessActor_C.Event LerpPostProcessSettings
struct ACameraPostProcessActor_C_Event_LerpPostProcessSettings_Params
{
	class APostProcessVolume*                          currentPPVolumn;                                          // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	struct FBP_STRUCT_CameraPostProcessSettings_type   targetPPSettingsStruct;                                   // (BlueprintVisible, BlueprintReadOnly, Parm)
	float                                              Time;                                                     // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	int                                                ID;                                                       // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	bool                                               isReverse;                                                // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

// Function CameraPostProcessActor.CameraPostProcessActor_C.ExecuteUbergraph_CameraPostProcessActor
struct ACameraPostProcessActor_C_ExecuteUbergraph_CameraPostProcessActor_Params
{
	int                                                EntryPoint;                                               // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

}

