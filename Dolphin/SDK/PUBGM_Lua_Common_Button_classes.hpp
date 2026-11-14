#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:06 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// WidgetBlueprintGeneratedClass Lua_Common_Button.Lua_Common_Button_C
// 0x0020 (0x02E8 - 0x02C8)
class ULua_Common_Button_C : public ULuaUserWidget
{
public:
	struct FPointerToUberGraphFrame                    UberGraphFrame;                                           // 0x02C8(0x0008) (Transient, DuplicateTransient)
	class UCanvasPanel*                                Root;                                                     // 0x02D0(0x0008) (BlueprintVisible, ExportObject, ZeroConstructor, InstancedReference, IsPlainOldData, RepSkip, RepNotify, Interp, NonTransactional, EditorOnly, NoDestructor, AutoWeak, ContainsInstancedReference, AssetRegistrySearchable, SimpleDisplay, AdvancedDisplay, Protected, BlueprintCallable, BlueprintAuthorityOnly, TextExportTransient, NonPIEDuplicateTransient, ExposeOnSpawn, PersistentInstance, UObjectWrapper, HasGetValueTypeHash, NativeAccessSpecifierPublic, NativeAccessSpecifierProtected, NativeAccessSpecifierPrivate)
	class UUserWidget*                                 ButtonUIBP;                                               // 0x02D8(0x0008) (Edit, BlueprintVisible, ZeroConstructor, DisableEditOnInstance, IsPlainOldData)
	TEnumAsByte<enum ECommon_Button_Type_Enum>         ButtonType;                                               // 0x02E0(0x0001) (Edit, BlueprintVisible, ZeroConstructor, IsPlainOldData)
	unsigned char                                      UnknownData00[0x3];                                       // 0x02E1(0x0003) MISSED OFFSET
	int                                                EnumButtonType;                                           // 0x02E4(0x0004) (Edit, BlueprintVisible, ZeroConstructor, IsPlainOldData)

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("WidgetBlueprintGeneratedClass Lua_Common_Button.Lua_Common_Button_C");
		return pStaticClass;
	}


	void SetEnumButtonType();
	void GetPreviewPath(struct FString* BPPath);
	void ConstructPreviewSubItem();
	void PreConstruct(bool* IsDesignTime);
	void ExecuteUbergraph_Lua_Common_Button(int EntryPoint);
};


}

