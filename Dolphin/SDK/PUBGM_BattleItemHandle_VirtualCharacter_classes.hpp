#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:22 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// BlueprintGeneratedClass BattleItemHandle_VirtualCharacter.BattleItemHandle_VirtualCharacter_C
// 0x0000 (0x0138 - 0x0138)
class UBattleItemHandle_VirtualCharacter_C : public UBattleItemHandle_VirtualItem_C
{
public:

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("BlueprintGeneratedClass BattleItemHandle_VirtualCharacter.BattleItemHandle_VirtualCharacter_C");
		return pStaticClass;
	}


	struct FBattleItemData ExtractItemData();
};


}

