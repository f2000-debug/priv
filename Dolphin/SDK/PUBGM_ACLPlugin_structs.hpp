#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:12 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Enums
//---------------------By 建锅 @JGNB_K---------------------------

// Enum ACLPlugin.ACLCompressionLevel
enum class EACLCompressionLevel : uint8_t
{
	ACLCL_Lowest                   = 0,
	ACLCL_Low                      = 1,
	ACLCL_Medium                   = 2,
	ACLCL_High                     = 3,
	ACLCL_Highest                  = 4,
	ACLCL_MAX                      = 5
};


// Enum ACLPlugin.ACLVectorFormat
enum class EACLVectorFormat : uint8_t
{
	ACLVF_Vector3                  = 0,
	ACLVF_Vector3_Variable         = 1,
	ACLVF_Vector3_MAX              = 2
};


// Enum ACLPlugin.ACLRotationFormat
enum class EACLRotationFormat : uint8_t
{
	ACLRF_Quat                     = 0,
	ACLRF_QuatDropW                = 1,
	ACLRF_QuatDropW_Variable       = 2,
	ACLRF_MAX                      = 3
};



}

