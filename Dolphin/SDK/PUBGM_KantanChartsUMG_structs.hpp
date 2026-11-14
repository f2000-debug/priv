#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:05 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Script Structs
//---------------------By 建锅 @JGNB_K---------------------------

// ScriptStruct KantanChartsUMG.CategoryStyleManualMapping
// 0x0020
struct FCategoryStyleManualMapping
{
	struct FName                                       CategoryId;                                               // 0x0000(0x0008) (Edit, ZeroConstructor, IsPlainOldData)
	struct FKantanCategoryStyle                        Style;                                                    // 0x0008(0x0018) (Edit)
};

// ScriptStruct KantanChartsUMG.SeriesStyleManualMapping
// 0x0028
struct FSeriesStyleManualMapping
{
	struct FName                                       SeriesId;                                                 // 0x0000(0x0008) (Edit, ZeroConstructor, IsPlainOldData)
	struct FKantanSeriesStyle                          Style;                                                    // 0x0008(0x0020) (Edit)
};

}

