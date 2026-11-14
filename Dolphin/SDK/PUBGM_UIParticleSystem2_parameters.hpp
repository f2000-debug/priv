#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:06 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Parameters
//---------------------By 建锅 @JGNB_K---------------------------

// Function UIParticleSystem2.ParticleSystemWidget2.SetParticleSystem
struct UParticleSystemWidget2_SetParticleSystem_Params
{
	class UParticleSystem*                             ParticleSystem;                                           // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function UIParticleSystem2.ParticleSystemWidget2.SetNiagaraSystem
struct UParticleSystemWidget2_SetNiagaraSystem_Params
{
	class UNiagaraSystem*                              ParticleSystem;                                           // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function UIParticleSystem2.ParticleSystemWidget2.SetActivate
struct UParticleSystemWidget2_SetActivate_Params
{
	bool                                               bIsActivate;                                              // (Parm, ZeroConstructor, IsPlainOldData)
};

// Function UIParticleSystem2.ParticleSystemWidget2.GetParticleComponent
struct UParticleSystemWidget2_GetParticleComponent_Params
{
	class UParticleSystemComponent*                    ReturnValue;                                              // (ExportObject, Parm, OutParm, ZeroConstructor, ReturnParm, InstancedReference, IsPlainOldData)
};

// Function UIParticleSystem2.ParticleSystemWidget2.GetNiagaraComponent
struct UParticleSystemWidget2_GetNiagaraComponent_Params
{
	class UNiagaraComponent*                           ReturnValue;                                              // (ExportObject, Parm, OutParm, ZeroConstructor, ReturnParm, InstancedReference, IsPlainOldData)
};

}

