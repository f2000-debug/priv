#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:55:58 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Script Structs
//---------------------By 建锅 @JGNB_K---------------------------

// ScriptStruct ClientNet.IMSDKLoginResult
// 0x0040
struct FIMSDKLoginResult
{
	int                                                imsdkRetCode;                                             // 0x0000(0x0004) (ZeroConstructor, IsPlainOldData)
	int                                                thirdRetCode;                                             // 0x0004(0x0004) (ZeroConstructor, IsPlainOldData)
	struct FString                                     OpenID;                                                   // 0x0008(0x0010) (ZeroConstructor)
	struct FString                                     Token;                                                    // 0x0018(0x0010) (ZeroConstructor)
	int64_t                                            tokenExpire;                                              // 0x0028(0x0008) (ZeroConstructor, IsPlainOldData)
	struct FString                                     retExtraJson;                                             // 0x0030(0x0010) (ZeroConstructor)
};

// ScriptStruct ClientNet.IMSDKExtraInfo
// 0x0050
struct FIMSDKExtraInfo
{
	TMap<struct FString, struct FString>               ExtraInfo;                                                // 0x0000(0x0050) (ZeroConstructor)
};

}

