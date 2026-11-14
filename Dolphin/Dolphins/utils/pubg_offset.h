//
// t.me/UltimateEngine
//
namespace PubgOffset {
//Class: World.Object下的
//NetDriver* NetDriver;
//NetConnection* ServerConnection;
//Class: Player.Object
//PlayerController* PlayerController;
int PlayerControllerOffset[3] = {0x38, 0x78, 0x30};
namespace PlayerControllerParam {
//STExtraBaseCharacter* STExtraBaseCharacter;
int SelfOffset = 0x2528;//0x24a0//0x24d0
//Class: Controller.Actor.Object
//Rotator ControlRotation;
int MouseOffset = 0x428;//0x420
//PlayerCameraManager* PlayerCameraManager;
int CameraManagerOffset = 0x490;//0x488
namespace CameraManagerParam{
//TViewTarget ViewTarget;
int PovOffset = 0xfd0 + 0x10;//0xfC0
}
namespace ControllerFunction {

int LineOfSightToOffset = 0x750;
}
}
//ULevel* PersistentLevel;
int ULevelOffset = 0x30;//uLevel
namespace ULevelParam {
//AActor* ObserveTarget;
int ObjectArrayOffset = 0xA0;
//int MaxPacket;
int ObjectCountOffset = 0xA8;
}

namespace ObjectParam {
int ClassIdOffset = 0x18;
int ClassNameOffset = 0xC;

namespace PlayerFunction {

int AddControllerYawInputOffset = 0x828 + 0x8;
int AddControllerRollInputOffset = 0x820 + 0x8;
int AddControllerPitchInputOffset = 0x830 + 0x8;
}
//PawnStateRepSyncData PawnStateRepSyncData; uint64 CurrentStates;
int StatusOffset = 0xf28;//0xee0//0xee8
//Class: UAECharacter.Character.Pawn.Actor.Object
//    
//struct AUAECharacter : ACharacter
//int TeamID;
int TeamOffset = 0x8f0;//ID 0x8f8
// Class: UAECharacter.Character.Pawn.Actor.Object
//    
// struct AUAECharacter : ACharacter
//FString PlayerName; FName PlayerType;
int NameOffset = 0x8a8;//
//Class: UAECharacter.Character.Pawn.Actor.Object
//bool bIsAI;
int RobotOffset = 0x9a1;////0x990
//Class: STExtraCharacter.UAECharacter.Character.Pawn.Actor.Object
//float Health;
int HpOffset = 0xd58;
int Dead = 0xd74;
// 0xd08//0xd18
//STCharacterMovementComponent* STCharacterMovement;
//RepMovement ReplicatedMovement;
int MoveCoordOffset = 0xb0;

//Class: Character.Pawn.Actor.Object
    //
    //struct AWheeledVehicle : APawn
//SkeletalMeshComponent* Mesh;
int MeshOffset = 0x458;//0x450
namespace MeshParam{
// struct UCharacterMovementComponent : UPawnMovementComponent
//Class: CharacterMovementComponent.PawnMovementComponent.NavMovementComponent.MovementComponent.ActorComponent.Object
//Character* CharacterOwner;
int HumanOffset = 0x1A4 + 0xC;//
// UStaticMeshComponent : UMeshComponent
//Class: StaticMeshComponent.MeshComponent.PrimitiveComponent.SceneComponent.ActorComponent.Object
//StaticMesh* StaticMesh;
int BonesOffset = 0x810;//0x7a0
}
//bool bIsWeaponFiring;
int OpenFireOffset = 0x15c0;//0x1538//0x1560
//bool bIsGunADS;
int OpenTheSightOffset = 0xFE9;//0xf91//0xfa9
//AnimStatusKeyList LastUpdateStatusKeyList;
int WeaponOneOffset = 0x26c0 + 0x20;//0x24b8//0x25c0
namespace WeaponParam{
int MasterOffset = 0xB0;
//byte ShootMode;
int ShootModeOffset = 0xeb0;//0xe94
//ShootWeaponEntity* ShootWeaponEntityComp;
int WeaponAttrOffset = 0xFD8;//0xfb8
namespace WeaponAttrParam{
//float BulletFireSpeed;
int BulletSpeedOffset = 0x4f0;//0x4e0
//float RecoilKickADS;
int RecoilOffset = 0xc50;//
}
}
//Class: PickUpListWrapperActor.PickUpWrapperActor.UAENetActor.LuaActor.Actor.Object
//    PickUpItemData[] PickUpDataList;
int GoodsListOffset = 0x848;//0x848
namespace GoodsListParam {
int DataBase = 0x38;
}
//SceneComponent* RootComponent
int CoordOffset = 0x1b0;//0x1a8
namespace CoordParam {
int HeightOffset = 0x17c;//
int CoordOffset = 0x184;//xyzCurveVector* CurveForRootScale;
}
}
}
