#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:11 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Script Structs
//---------------------By 建锅 @JGNB_K---------------------------

// ScriptStruct TApm.TApmSceneInfo
// 0x0020
struct FTApmSceneInfo
{
	int                                                PerfPriority;                                             // 0x0000(0x0004) (ZeroConstructor, IsPlainOldData)
	int                                                ReportPriority;                                           // 0x0004(0x0004) (ZeroConstructor, IsPlainOldData)
	int                                                ID;                                                       // 0x0008(0x0004) (ZeroConstructor, IsPlainOldData)
	bool                                               IsFinished;                                               // 0x000C(0x0001) (ZeroConstructor, IsPlainOldData)
	unsigned char                                      UnknownData00[0x13];                                      // 0x000D(0x0013) MISSED OFFSET
};

}

