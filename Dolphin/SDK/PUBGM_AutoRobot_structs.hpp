#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:06 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Enums
//---------------------By 建锅 @JGNB_K---------------------------

// Enum AutoRobot.EAutoRunTestFlag
enum class EAutoRunTestFlag : uint8_t
{
	Game4Win                       = 0,
	PVEBattleTest                  = 1,
	EAutoRunTestFlag_MAX           = 2
};



//---------------------By 建锅 @JGNB_K---------------------------
//Script Structs
//---------------------By 建锅 @JGNB_K---------------------------

// ScriptStruct AutoRobot.BulletImpactAutoTestData
// 0x001C
struct FBulletImpactAutoTestData
{
	unsigned char                                      UnknownData00[0x1C];                                      // 0x0000(0x001C) MISSED OFFSET
};

}

