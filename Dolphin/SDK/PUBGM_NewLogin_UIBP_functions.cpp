// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:24 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function NewLogin_UIBP.NewLogin_UIBP_C.SetRenderTransformWheniPhone
// (Public, BlueprintCallable, BlueprintEvent)

void UNewLogin_UIBP_C::SetRenderTransformWheniPhone()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function NewLogin_UIBP.NewLogin_UIBP_C.SetRenderTransformWheniPhone");

	UNewLogin_UIBP_C_SetRenderTransformWheniPhone_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function NewLogin_UIBP.NewLogin_UIBP_C.Construct
// (BlueprintCosmetic, Event, Public, BlueprintEvent)

void UNewLogin_UIBP_C::Construct()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function NewLogin_UIBP.NewLogin_UIBP_C.Construct");

	UNewLogin_UIBP_C_Construct_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function NewLogin_UIBP.NewLogin_UIBP_C.ExecuteUbergraph_NewLogin_UIBP
// ()
// Parameters:
// int                            EntryPoint                     (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)

void UNewLogin_UIBP_C::ExecuteUbergraph_NewLogin_UIBP(int EntryPoint)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function NewLogin_UIBP.NewLogin_UIBP_C.ExecuteUbergraph_NewLogin_UIBP");

	UNewLogin_UIBP_C_ExecuteUbergraph_NewLogin_UIBP_Params params;
	params.EntryPoint = EntryPoint;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

