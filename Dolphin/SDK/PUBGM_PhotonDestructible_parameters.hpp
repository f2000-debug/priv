#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:58 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function PhotonDestructible.PhotonDestructibleSurfaceComponent.Server_ProcessHit
struct UPhotonDestructibleSurfaceComponent_Server_ProcessHit_Params
{
	struct FPhotonDestructibleSurfaceHitData           HitData;                                                  // (ConstParm, Parm, OutParm, ReferenceParm)
};

// Function PhotonDestructible.PhotonDestructibleSurfaceComponent.OnRep_SurfaceNetData
struct UPhotonDestructibleSurfaceComponent_OnRep_SurfaceNetData_Params
{
};

// Function PhotonDestructible.PhotonDestructibleSurfaceComponent.Client_OnProcessHit
struct UPhotonDestructibleSurfaceComponent_Client_OnProcessHit_Params
{
	struct FPhotonDestructibleSurfaceHitData           HitData;                                                  // (ConstParm, Parm, ReferenceParm)
};

// Function PhotonDestructible.PhotonDestructibleInstancedSurfaceComponent.Server_ProcessHit
struct UPhotonDestructibleInstancedSurfaceComponent_Server_ProcessHit_Params
{
	struct FPhotonDestructibleSurfaceHitData           HitData;                                                  // (ConstParm, Parm, OutParm, ReferenceParm)
};

// Function PhotonDestructible.PhotonDestructibleInstancedSurfaceComponent.OnRep_SurfaceNetData
struct UPhotonDestructibleInstancedSurfaceComponent_OnRep_SurfaceNetData_Params
{
};

// Function PhotonDestructible.PhotonDestructibleInstancedSurfaceComponent.Client_OnProcessHit
struct UPhotonDestructibleInstancedSurfaceComponent_Client_OnProcessHit_Params
{
	struct FPhotonDestructibleSurfaceHitData           HitData;                                                  // (ConstParm, Parm, ReferenceParm)
};

// Function PhotonDestructible.PhotonDestructiblePuppet.TriggerPuppetEvent
struct UPhotonDestructiblePuppet_TriggerPuppetEvent_Params
{
	int                                                EventID;                                                  // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function PhotonDestructible.PhotonDestructiblePuppetContainer.TriggerPuppetEvent
struct UPhotonDestructiblePuppetContainer_TriggerPuppetEvent_Params
{
	struct FString                                     ObjectName;                                               // (Parm, ZeroConstructor)
	int                                                EventID;                                                  // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function PhotonDestructible.PhotonDestructiblePuppetMgr.Client_TriggerPuppetEvent
struct UPhotonDestructiblePuppetMgr_Client_TriggerPuppetEvent_Params
{
	struct FGuid                                       PuppetGUID;                                               // (ConstParm, Parm, ReferenceParm, IsPlainOldData)
	int                                                EventID;                                                  // (Parm, ZeroConstructor, IsPlainOldData)
};

}

