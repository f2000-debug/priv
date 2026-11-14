// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:10 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function GameletJsEnv.GameletDynamicDelegateProxy.Fire
// (Final, Native, Public, BlueprintCallable)

void UGameletDynamicDelegateProxy::Fire()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function GameletJsEnv.GameletDynamicDelegateProxy.Fire");

	UGameletDynamicDelegateProxy_Fire_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

