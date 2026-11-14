#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:09 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Enums
//---------------------By 建锅 @JGNB_K---------------------------

// Enum PixUILog.EPxLogLevels
enum class EPxLogLevels : uint8_t
{
	EPxLogLevels__Log              = 0,
	EPxLogLevels__Warning          = 1,
	EPxLogLevels__Error            = 2,
	EPxLogLevels__Debug            = 3,
	EPxLogLevels__Count            = 4,
	EPxLogLevels__EPxLogLevels_MAX = 5
};


// Enum PixUILog.EPxLogGroups
enum class EPxLogGroups : uint8_t
{
	EPxLogGroups__Core             = 0,
	EPxLogGroups__Plugin           = 1,
	EPxLogGroups__Script           = 2,
	EPxLogGroups__Profiler         = 3,
	EPxLogGroups__Count            = 4,
	EPxLogGroups__EPxLogGroups_MAX = 5
};



}

