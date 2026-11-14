// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:06 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function Common_UIPopupBG.Common_UIPopupBG_C.Construct
// (BlueprintCosmetic, Event, Public, BlueprintEvent)

void UCommon_UIPopupBG_C::Construct()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Common_UIPopupBG.Common_UIPopupBG_C.Construct");

	UCommon_UIPopupBG_C_Construct_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function Common_UIPopupBG.Common_UIPopupBG_C.ExecuteUbergraph_Common_UIPopupBG
// ()
// Parameters:
// int                            EntryPoint                     (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)

void UCommon_UIPopupBG_C::ExecuteUbergraph_Common_UIPopupBG(int EntryPoint)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Common_UIPopupBG.Common_UIPopupBG_C.ExecuteUbergraph_Common_UIPopupBG");

	UCommon_UIPopupBG_C_ExecuteUbergraph_Common_UIPopupBG_Params params;
	params.EntryPoint = EntryPoint;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

