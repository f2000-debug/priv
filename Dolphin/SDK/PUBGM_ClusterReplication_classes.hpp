#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:06 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// Class ClusterReplication.ClusterReplicationSubsystem
// 0x0590 (0x05B8 - 0x0028)
class UClusterReplicationSubsystem : public UObject
{
public:
	unsigned char                                      UnknownData00[0x590];                                     // 0x0028(0x0590) MISSED OFFSET

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class ClusterReplication.ClusterReplicationSubsystem");
		return pStaticClass;
	}


	void SetAutoClearCache(bool Val);
	void SetAutoCache(bool Val);
	void RemoveAllCachedObjectData();
};


// Class ClusterReplication.ClusterEntityInterface
// 0x0000 (0x0028 - 0x0028)
class UClusterEntityInterface : public UInterface
{
public:

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class ClusterReplication.ClusterEntityInterface");
		return pStaticClass;
	}

};


}

