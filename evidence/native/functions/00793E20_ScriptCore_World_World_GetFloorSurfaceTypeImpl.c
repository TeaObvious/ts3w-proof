/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ad8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetFloorSurfaceTypeImpl [assembly=ScriptCore token=0x0600085D; lotId:
   System.UInt64, worldPos: Sims3.SimIFace.Vector3; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_GetFloorSurfaceTypeImpl
          (int param_1,int param_2,undefined1 *param_3,undefined4 param_4,float param_5)

{
  void *this;
  int *piVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined1 **ppuVar4;
  int iVar5;
  void *pvVar6;
  byte *inputBytes;
  void *unaff_EBX;
  char local_b4 [4];
  undefined1 *local_b0;
  undefined1 *puStack_ac;
  undefined2 *puStack_a8;
  char *pcStack_a4;
  undefined4 uStack_9c;
  undefined1 local_94 [4];
  undefined1 *local_90;
  undefined4 uStack_8c;
  float fStack_88;
  undefined1 *puStack_84;
  LotXZLevel local_7c;
  undefined **local_70 [2];
  undefined2 local_68;
  undefined2 local_66;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  
  this = DAT_011edbc4;
  if (((DAT_011edbc4 != (void *)0x0) &&
      (piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0),
      piVar1 != (int *)0x0)) &&
     (uVar2 = FUN_007893e0(piVar1,(float)param_3,param_5), (char)uVar2 != '\0')) {
    local_7c.x = FLOAT_00fab218;
    local_7c.z = FLOAT_00fab218;
    puStack_a8 = (undefined2 *)param_5;
    pcStack_a4 = param_3;
    puStack_ac = (undefined1 *)param_4;
    local_b0 = param_3;
    local_7c.level = 0;
    local_90 = param_3;
    uStack_8c = param_4;
    fStack_88 = param_5;
    puStack_84 = param_3;
    Lot_WorldPositionToLocalLocation(piVar1,(float *)&local_90,&local_7c);
    local_b4[0] = -1;
    local_b4[1] = 0xff;
    local_b4[2] = 0;
    local_b4[3] = 0xff;
    LotLocation_EncodeCellAndQuadrant(&local_7c.x,local_b4);
    pvVar6 = (void *)piVar1[0xa4];
    FUN_00afba70(&local_50);
    FUN_00a8fa90(pvVar6,local_b4,&local_50);
    if (((local_50 == DAT_011ec8a0) && (local_48 == DAT_011ec8a8)) &&
       ((local_44 == DAT_011ec8ac && (local_4c == DAT_011ec8a4)))) {
      pvVar6 = (void *)thunk_FUN_00835d40();
      uVar3 = FUN_00c6bf00(this,(float)param_3,param_5,local_7c.level,0x27);
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      inputBytes = FUN_008298c0(pvVar6,uVar3,(undefined4 *)0x0);
      pcStack_a4 = "World/WorldHost";
      local_b0 = &DAT_011c8e54;
      puStack_ac = &DAT_011c8e54;
      puStack_a8 = &DAT_011c8e56;
      ppuVar4 = EaString_FromUtf8Bytes(&local_90,inputBytes,0xffffffff,(byte *)0x0);
      if (ppuVar4 != &local_b0) {
        FUN_00408d60(&local_b0,*ppuVar4,(undefined2 *)ppuVar4[1]);
      }
      if ((2 < (int)((int)fStack_88 - (int)local_90 & 0xfffffffeU)) &&
         (local_90 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(local_90);
      }
      local_70[0] = &PTR_FUN_0100886c;
      local_66 = 0x13;
      local_68 = 0xb;
      FUN_004f59c0(local_70,0x13,9,&local_b0,0x10,1);
      iVar5 = *piVar1;
    }
    else {
      uVar3 = ProductCatalog_FindExactKeyInFourBanks(DAT_011ee034,&local_50);
      if (uVar3 == 0) {
        return 0;
      }
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      local_b0 = &DAT_011c8e54;
      puStack_ac = &DAT_011c8e54;
      pcStack_a4 = "World/WorldHost";
      puStack_a8 = &DAT_011c8e56;
      ppuVar4 = FUN_004f3c90(&local_90,(undefined4 *)(uVar3 + 0xa4));
      if (ppuVar4 != &local_b0) {
        FUN_00408d60(&local_b0,*ppuVar4,(undefined2 *)ppuVar4[1]);
      }
      if ((2 < (int)((int)fStack_88 - (int)local_90 & 0xfffffffeU)) &&
         (local_90 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(local_90);
      }
      FUN_005ab2a0(local_70,&local_b0);
      iVar5 = *piVar1;
    }
    (**(code **)(iVar5 + 0x50))(local_70,local_94);
    local_7c.z = (float)&PTR_FUN_00fba6f4;
    if (((uint)local_70[0] & 4) != 0) {
      FUN_004f5760(&local_7c.z,'\0');
    }
    if ((2 < (int)((int)local_b0 - (int)unaff_EBX & 0xfffffffeU)) && (unaff_EBX != (void *)0x0)) {
      Memory_FreeIfNonNull(unaff_EBX);
    }
    return uStack_9c;
  }
  return 0;
}

