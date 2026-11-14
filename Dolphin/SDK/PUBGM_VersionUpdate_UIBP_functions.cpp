// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:23 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function VersionUpdate_UIBP.VersionUpdate_UIBP_C.Construct
// (BlueprintCosmetic, Event, Public, BlueprintEvent)

void UVersionUpdate_UIBP_C::Construct()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function VersionUpdate_UIBP.VersionUpdate_UIBP_C.Construct");

	UVersionUpdate_UIBP_C_Construct_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function VersionUpdate_UIBP.VersionUpdate_UIBP_C.ExecuteUbergraph_VersionUpdate_UIBP
// ()
// Parameters:
// int                            EntryPoint                     (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)

void UVersionUpdate_UIBP_C::ExecuteUbergraph_VersionUpdate_UIBP(int EntryPoint)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function VersionUpdate_UIBP.VersionUpdate_UIBP_C.ExecuteUbergraph_VersionUpdate_UIBP");

	UVersionUpdate_UIBP_C_ExecuteUbergraph_VersionUpdate_UIBP_Params params;
	params.EntryPoint = EntryPoint;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

