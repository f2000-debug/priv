#pragma once

// SDK集成工具By建锅 - @JGNB_K (4.4.0 -- 64Bit) SDK 工具 By 建锅 @JGNB_K
// Telegram频道:- @JGNB_K
// 此文件生成时间Mon May 11 21:56:11 2026
 
namespace SDK
{
//---------------------By 建锅 @JGNB_K---------------------------
//Classes
//---------------------By 建锅 @JGNB_K---------------------------

// Class WebCameraFeed.WebCameraWidget
// 0x0100 (0x0200 - 0x0100)
class UWebCameraWidget : public UWidget
{
public:
	struct FWebCameraDeviceId                          DeviceID;                                                 // 0x0100(0x0004) (Edit, Config)
	int                                                requestedWidth;                                           // 0x0104(0x0004) (Edit, ZeroConstructor, Config, IsPlainOldData)
	int                                                requestedHeight;                                          // 0x0108(0x0004) (Edit, ZeroConstructor, Config, IsPlainOldData)
	bool                                               ScanningQRCode;                                           // 0x010C(0x0001) (Edit, ZeroConstructor, Config, IsPlainOldData)
	unsigned char                                      UnknownData00[0x3];                                       // 0x010D(0x0003) MISSED OFFSET
	struct FScriptDelegate                             OnScanningSuccess;                                        // 0x0110(0x000C) (ZeroConstructor, InstancedReference)
	unsigned char                                      UnknownData01[0x4];                                       // 0x010D(0x0004) FIX WRONG TYPE SIZE OF PREVIOUS PROPERTY
	unsigned char                                      UnknownData02[0xE0];                                      // 0x0120(0x00E0) MISSED OFFSET

	static UClass* StaticClass()
	{
        static UClass *pStaticClass = 0;
        if (!pStaticClass)
            pStaticClass = UObject::FindClass("Class WebCameraFeed.WebCameraWidget");
		return pStaticClass;
	}


	void UnLockScreenOrientation();
	bool SwitchFrontAndBackCamera();
	void SetDeviceId(int ID);
	void SetColorAndOpacity(const struct FLinearColor& InColorAndOpacity);
	bool SaveAsImage(const struct FString& Filename);
	void ReleaseVideoGrabber();
	void LockScreenOrientation();
	void InitVideoGrabber();
	int GetFrontCameraId();
	int GetBackCameraId();
};


}

