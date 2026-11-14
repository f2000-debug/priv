// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:06 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function ClusterReplication.ClusterReplicationSubsystem.SetAutoClearCache
// (Final, Native, Public, BlueprintCallable)
// Parameters:
// bool                           Val                            (Parm, ZeroConstructor, IsPlainOldData)

void UClusterReplicationSubsystem::SetAutoClearCache(bool Val)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function ClusterReplication.ClusterReplicationSubsystem.SetAutoClearCache");

	UClusterReplicationSubsystem_SetAutoClearCache_Params params;
	params.Val = Val;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function ClusterReplication.ClusterReplicationSubsystem.SetAutoCache
// (Final, Native, Public, BlueprintCallable)
// Parameters:
// bool                           Val                            (Parm, ZeroConstructor, IsPlainOldData)

void UClusterReplicationSubsystem::SetAutoCache(bool Val)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function ClusterReplication.ClusterReplicationSubsystem.SetAutoCache");

	UClusterReplicationSubsystem_SetAutoCache_Params params;
	params.Val = Val;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function ClusterReplication.ClusterReplicationSubsystem.RemoveAllCachedObjectData
// (Final, Native, Public, BlueprintCallable)

void UClusterReplicationSubsystem::RemoveAllCachedObjectData()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function ClusterReplication.ClusterReplicationSubsystem.RemoveAllCachedObjectData");

	UClusterReplicationSubsystem_RemoveAllCachedObjectData_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

