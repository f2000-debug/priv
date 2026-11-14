#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:08 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.OnViewportSizeChanged
struct ULobbyCameraFunctionLibrary_C_OnViewportSizeChanged_Params
{
	struct FVector2D                                   OldViewport;                                              // (BlueprintVisible, BlueprintReadOnly, Parm, IsPlainOldData)
	struct FVector2D                                   NewViewport;                                              // (BlueprintVisible, BlueprintReadOnly, Parm, IsPlainOldData)
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.LevelSequence_ExecuteStartCallback
struct ULobbyCameraFunctionLibrary_C_LevelSequence_ExecuteStartCallback_Params
{
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.GetCurrentCameraActor
struct ULobbyCameraFunctionLibrary_C_GetCurrentCameraActor_Params
{
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	class ACameraActor*                                CameraActor;                                              // (Parm, OutParm, ZeroConstructor, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.LevelSequence_ExecuteEndCallback
struct ULobbyCameraFunctionLibrary_C_LevelSequence_ExecuteEndCallback_Params
{
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.SwitchCamera_Only
struct ULobbyCameraFunctionLibrary_C_SwitchCamera_Only_Params
{
	int                                                CameraID;                                                 // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	float                                              BlendTime;                                                // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.CreateLevelSequencePlayerAndActor
struct ULobbyCameraFunctionLibrary_C_CreateLevelSequencePlayerAndActor_Params
{
	class ULevelSequence*                              level_sequence;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	class ALevelSequenceActor*                         OutActor;                                                 // (Parm, OutParm, ZeroConstructor, IsPlainOldData)
	class ULevelSequencePlayer*                        ReturnValue;                                              // (Parm, OutParm, ZeroConstructor, ReturnParm, IsPlainOldData)
};

// Function LobbyCameraFunctionLibrary.LobbyCameraFunctionLibrary_C.SwitchCamera
struct ULobbyCameraFunctionLibrary_C_SwitchCamera_Params
{
	int                                                NewCameraID;                                              // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	float                                              BlendTime;                                                // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	bool                                               IgnoreLight;                                              // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
	class UObject*                                     __WorldContext;                                           // (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)
};

}

