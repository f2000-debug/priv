// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:06 2026
 
#include "../SDK.hpp"

namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Functions
//---------------------By 建锅 @JGNB_K---------------------------

// Function Lua_Common_Button.Lua_Common_Button_C.SetEnumButtonType
// (Public, BlueprintCallable, BlueprintEvent)

void ULua_Common_Button_C::SetEnumButtonType()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Lua_Common_Button.Lua_Common_Button_C.SetEnumButtonType");

	ULua_Common_Button_C_SetEnumButtonType_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function Lua_Common_Button.Lua_Common_Button_C.GetPreviewPath
// (Public, HasOutParms, BlueprintCallable, BlueprintEvent)
// Parameters:
// struct FString                 BPPath                         (Parm, OutParm, ZeroConstructor)

void ULua_Common_Button_C::GetPreviewPath(struct FString* BPPath)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Lua_Common_Button.Lua_Common_Button_C.GetPreviewPath");

	ULua_Common_Button_C_GetPreviewPath_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;

	if (BPPath != nullptr)
		*BPPath = params.BPPath;
}


// Function Lua_Common_Button.Lua_Common_Button_C.ConstructPreviewSubItem
// (Public, HasDefaults, BlueprintCallable, BlueprintEvent)

void ULua_Common_Button_C::ConstructPreviewSubItem()
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Lua_Common_Button.Lua_Common_Button_C.ConstructPreviewSubItem");

	ULua_Common_Button_C_ConstructPreviewSubItem_Params params;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function Lua_Common_Button.Lua_Common_Button_C.PreConstruct
// (BlueprintCosmetic, Event, Public, BlueprintEvent)
// Parameters:
// bool*                          IsDesignTime                   (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)

void ULua_Common_Button_C::PreConstruct(bool* IsDesignTime)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Lua_Common_Button.Lua_Common_Button_C.PreConstruct");

	ULua_Common_Button_C_PreConstruct_Params params;
	params.IsDesignTime = IsDesignTime;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


// Function Lua_Common_Button.Lua_Common_Button_C.ExecuteUbergraph_Lua_Common_Button
// ()
// Parameters:
// int                            EntryPoint                     (BlueprintVisible, BlueprintReadOnly, Parm, ZeroConstructor, IsPlainOldData)

void ULua_Common_Button_C::ExecuteUbergraph_Lua_Common_Button(int EntryPoint)
{
	static UFunction *pFunc = 0;
	if (!pFunc)
		pFunc  = UObject::FindObject<UFunction>("Function Lua_Common_Button.Lua_Common_Button_C.ExecuteUbergraph_Lua_Common_Button");

	ULua_Common_Button_C_ExecuteUbergraph_Lua_Common_Button_Params params;
	params.EntryPoint = EntryPoint;

	auto flags = pFunc->FunctionFlags;

	UObject *currentObj = (UObject *) this;
	currentObj->ProcessEvent(pFunc, &params);

	pFunc->FunctionFlags = flags;
}


}

