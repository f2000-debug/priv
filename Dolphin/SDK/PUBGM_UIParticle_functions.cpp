// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:04 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function UIParticle.UIParticle.StopEmit
// (Final, Native, Public, BlueprintCallable)

void UUIParticle::StopEmit()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticle.StopEmit");

	UUIParticle_StopEmit_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticle.Stop
// (Final, Native, Public, BlueprintCallable)

void UUIParticle::Stop()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticle.Stop");

	UUIParticle_Stop_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticle.SetPlayParticle
// (Final, Native, Public, BlueprintCallable)
// Parameters:
// bool                           InPlayParticle                 (Parm, ZeroConstructor, IsPlainOldData)

void UUIParticle::SetPlayParticle(bool InPlayParticle)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticle.SetPlayParticle");

	UUIParticle_SetPlayParticle_Params params;
	params.InPlayParticle = InPlayParticle;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticle.Play
// (Final, Native, Public, BlueprintCallable)

void UUIParticle::Play()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticle.Play");

	UUIParticle_Play_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticleEmitter.StopEmit
// (Final, Native, Public, BlueprintCallable)

void UUIParticleEmitter::StopEmit()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticleEmitter.StopEmit");

	UUIParticleEmitter_StopEmit_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticleEmitter.Stop
// (Final, Native, Public, BlueprintCallable)

void UUIParticleEmitter::Stop()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticleEmitter.Stop");

	UUIParticleEmitter_Stop_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticleEmitter.SetPlayParticle
// (Final, Native, Public, BlueprintCallable)
// Parameters:
// bool                           InPlayParticle                 (Parm, ZeroConstructor, IsPlainOldData)

void UUIParticleEmitter::SetPlayParticle(bool InPlayParticle)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticleEmitter.SetPlayParticle");

	UUIParticleEmitter_SetPlayParticle_Params params;
	params.InPlayParticle = InPlayParticle;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function UIParticle.UIParticleEmitter.Play
// (Final, Native, Public, BlueprintCallable)

void UUIParticleEmitter::Play()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function UIParticle.UIParticleEmitter.Play");

	UUIParticleEmitter_Play_Params params;

	auto flags = pFunc->FunctionFlags;
	pFunc->FunctionFlags |= 0x400;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

