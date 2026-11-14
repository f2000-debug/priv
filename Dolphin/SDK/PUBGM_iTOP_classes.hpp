#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:10 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// Class iTOP.FBHelper
// 0x0000 (0x0028 - 0x0028)
class UFBHelper : public UObject
{
public:

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class iTOP.FBHelper");
		return pStaticClass;
	}


	static void DelayToSetAutoInitFacebookLog(bool IsAutoInit);
	static void DelayToInitFacebookSDK(bool IsAutoInit, bool WithLaunchOption);
};


}

