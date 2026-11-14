#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:08 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// Class CommonGameFeatures.ActorRepControlComponent
// 0x0050 (0x0288 - 0x0238)
class UActorRepControlComponent : public ULuaActorComponent
{
public:
	TMap<int, struct FRepControlGroupData>             ItemRepBlockingUIDMap;                                    // 0x0238(0x0050) (ZeroConstructor, Transient)

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class CommonGameFeatures.ActorRepControlComponent");
		return pStaticClass;
	}


	void ToggleGroupedRepControlByUID(int64_t UID, int ControlMark, int RepControlGroup);
	bool ShouldBlockRepByUID(int64_t UID, int RepControlGroup);
	bool GetControlGroupData(int RepControlGroup, struct FRepControlGroupData* OutData);
};


// Class CommonGameFeatures.RepControlActorBase
// 0x0008 (0x0578 - 0x0570)
class ARepControlActorBase : public ALuaActor
{
public:
	class UActorRepControlComponent*                   CachedBlockingComp;                                       // 0x0570(0x0008) (ExportObject, ZeroConstructor, InstancedReference, IsPlainOldData)

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class CommonGameFeatures.RepControlActorBase");
		return pStaticClass;
	}


	bool IsNetRelevantForCustomCheck(class AActor* RealViewer, class AActor* ViewTarget, const struct FVector& SrcLocation);
};


}

