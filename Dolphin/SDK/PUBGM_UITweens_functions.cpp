// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:11 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function UITweens.TweenManager.TweenScale
// (Final, Native, Public, HasDefaults)
// Parameters:
// class UWidget*                 Widget                         (Parm, ZeroConstructor, InstancedReference, IsPlainOldData)
// struct FVector2D               From                           (Parm, IsPlainOldData)
// struct FVector2D               To                             (Parm, IsPlainOldData)
// float                          Timespan                       (Parm, ZeroConstructor, IsPlainOldData)
// int                            Type                           (Parm, ZeroConstructor, IsPlainOldData)

void UTweenManager::TweenScale(class UWidget* Widget, const struct FVector2D& From, const struct FVector2D& To, float Timespan, int Type)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UITweens.TweenManager.TweenScale");

	UTweenManager_TweenScale_Params params;
	params.Widget = Widget;
	params.From = From;
	params.To = To;
	params.Timespan = Timespan;
	params.Type = Type;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UITweens.TweenManager.TweenPosition
// (Final, Native, Public, HasDefaults)
// Parameters:
// class UWidget*                 Widget                         (Parm, ZeroConstructor, InstancedReference, IsPlainOldData)
// struct FVector2D               From                           (Parm, IsPlainOldData)
// struct FVector2D               To                             (Parm, IsPlainOldData)
// float                          Timespan                       (Parm, ZeroConstructor, IsPlainOldData)
// int                            Type                           (Parm, ZeroConstructor, IsPlainOldData)

void UTweenManager::TweenPosition(class UWidget* Widget, const struct FVector2D& From, const struct FVector2D& To, float Timespan, int Type)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UITweens.TweenManager.TweenPosition");

	UTweenManager_TweenPosition_Params params;
	params.Widget = Widget;
	params.From = From;
	params.To = To;
	params.Timespan = Timespan;
	params.Type = Type;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UITweens.TweenManager.TweenAlpha
// (Final, Native, Public)
// Parameters:
// class UWidget*                 Widget                         (Parm, ZeroConstructor, InstancedReference, IsPlainOldData)
// float                          From                           (Parm, ZeroConstructor, IsPlainOldData)
// float                          To                             (Parm, ZeroConstructor, IsPlainOldData)
// float                          Timespan                       (Parm, ZeroConstructor, IsPlainOldData)
// int                            Type                           (Parm, ZeroConstructor, IsPlainOldData)

void UTweenManager::TweenAlpha(class UWidget* Widget, float From, float To, float Timespan, int Type)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UITweens.TweenManager.TweenAlpha");

	UTweenManager_TweenAlpha_Params params;
	params.Widget = Widget;
	params.From = From;
	params.To = To;
	params.Timespan = Timespan;
	params.Type = Type;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UITweens.TweenManager.Tick
// (Final, Native, Public)
// Parameters:
// float                          DeltaTime                      (Parm, ZeroConstructor, IsPlainOldData)

void UTweenManager::Tick(float DeltaTime)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UITweens.TweenManager.Tick");

	UTweenManager_Tick_Params params;
	params.DeltaTime = DeltaTime;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

