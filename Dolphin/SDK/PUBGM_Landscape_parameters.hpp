#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:00 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function Landscape.LandscapeProxy.SetLandScapeRenderMask
struct ALandscapeProxy_SetLandScapeRenderMask_Params
{
	int                                                Index;                                                    // (ConstParm, Parm, ZeroConstructor, IsPlainOldData)
	bool                                               bUseRenderMask;                                           // (ConstParm, Parm, ZeroConstructor, IsPlainOldData)
	unsigned char                                      RenderMask;                                               // (ConstParm, Parm, ZeroConstructor, IsPlainOldData)
};

// Function Landscape.LandscapeProxy.EditorApplySpline
struct ALandscapeProxy_EditorApplySpline_Params
{
	class USplineComponent*                            InSplineComponent;                                        // (Parm, ZeroConstructor, InstancedReference, IsPlainOldData)
	float                                              StartWidth;                                               // (Parm, ZeroConstructor, IsPlainOldData)
	float                                              EndWidth;                                                 // (Parm, ZeroConstructor, IsPlainOldData)
	float                                              StartSideFalloff;                                         // (Parm, ZeroConstructor, IsPlainOldData)
	float                                              EndSideFalloff;                                           // (Parm, ZeroConstructor, IsPlainOldData)
	float                                              StartRoll;                                                // (Parm, ZeroConstructor, IsPlainOldData)
	float                                              EndRoll;                                                  // (Parm, ZeroConstructor, IsPlainOldData)
	int                                                NumSubdivisions;                                          // (Parm, ZeroConstructor, IsPlainOldData)
	bool                                               bRaiseHeights;                                            // (Parm, ZeroConstructor, IsPlainOldData)
	bool                                               bLowerHeights;                                            // (Parm, ZeroConstructor, IsPlainOldData)
	class ULandscapeLayerInfoObject*                   PaintLayer;                                               // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function Landscape.LandscapeProxy.ChangeLODDistributionSettingConsoleVariable
struct ALandscapeProxy_ChangeLODDistributionSettingConsoleVariable_Params
{
};

// Function Landscape.LandscapeProxy.ChangeLODDistanceFactor
struct ALandscapeProxy_ChangeLODDistanceFactor_Params
{
	float                                              InLODDistanceFactor;                                      // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function Landscape.LandscapeProxy.ChangeLOD0DistributionSettingConsoleVariable
struct ALandscapeProxy_ChangeLOD0DistributionSettingConsoleVariable_Params
{
};

// Function Landscape.LandscapeProxy.ChangebUseScreenSizeLOD
struct ALandscapeProxy_ChangebUseScreenSizeLOD_Params
{
	bool                                               InbUseScreenSizeLOD;                                      // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function Landscape.IdeaGrassFieldFunctionLibrary.IdeaGrassRenderForceTextureTrample
struct UIdeaGrassFieldFunctionLibrary_IdeaGrassRenderForceTextureTrample_Params
{
	struct FIdeaGrassFieldData                         GrassFieldData;                                           // (Parm)
};

// Function Landscape.IdeaGrassFieldFunctionLibrary.IdeaGrassRenderForceTextureSkill
struct UIdeaGrassFieldFunctionLibrary_IdeaGrassRenderForceTextureSkill_Params
{
	struct FIdeaGrassFieldData                         GrassFieldData;                                           // (Parm)
};

// Function Landscape.IdeaGrassFieldFunctionLibrary.IdeaGrassRenderForceTextureFade
struct UIdeaGrassFieldFunctionLibrary_IdeaGrassRenderForceTextureFade_Params
{
	struct FIdeaGrassFieldData                         GrassFieldData;                                           // (Parm)
};

// Function Landscape.IdeaGrassFieldFunctionLibrary.IdeaGrassRenderForceTexture
struct UIdeaGrassFieldFunctionLibrary_IdeaGrassRenderForceTexture_Params
{
	struct FIdeaGrassFieldData                         GrassFieldData;                                           // (Parm)
};

}

