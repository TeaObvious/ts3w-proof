/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011634e0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_FindGoodLocationAtCustomDepth [assembly=ScriptCore token=0x060007A0;
   objId: System.UInt64, startPosition: Sims3.SimIFace.Vector3, directionToSelect: System.Int32,
   initialsearchDirection: System.Int32, facingMask: System.UInt32, booleanConstraints:
   System.UInt32, requiredRoomID: System.Int32, requiredPlatformRoomID: System.Int32,
   ValidatePlacementDelegate: System.Delegate, objIdsToIgnore: System.UInt64[], minDepth:
   System.Single, maxDepth: System.Single, outPos: Sims3.SimIFace.Vector3&, outOrientation:
   System.Single&, bTestWorldOnly: System.Boolean, offsetScale: System.Int32, maxSearchRadius:
   System.Single; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_FindGoodLocationAtCustomDepth
          (undefined4 param_1,undefined4 param_2,float param_3,undefined4 param_4,float param_5,
          uint param_6,uint param_7,int param_8,uint param_9,undefined4 param_10,undefined4 param_11
          ,int param_12,int param_13,float param_14,float param_15,float *param_16,float *param_17,
          char param_18,undefined4 param_19,float param_20)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int local_14;
  undefined4 *local_10;
  float local_c;
  float local_8;
  float local_4;
  
  local_c = param_20;
  local_8 = param_3;
  local_4 = param_5;
  iVar1 = FUN_00937570();
  puVar2 = (undefined4 *)FUN_00937f80(iVar1);
  if (puVar2 == (undefined4 *)0x0) {
    return 0;
  }
  LOCK();
  puVar2[1] = puVar2[1] + 1;
  pvVar4 = DAT_011edbc4;
  UNLOCK();
  param_20 = 0.0;
  local_14 = 0;
  local_10 = puVar2;
  if (param_13 != 0) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar3 + 0x68))(param_13,&local_14,&param_20);
  }
  if (param_18 != '\0') {
    uVar5 = FUN_00b0f2b0(puVar2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                         param_11,param_14,param_15,param_16,param_17,param_12,'\x01',param_19,
                         &local_c,local_14,(int)param_20);
    piVar3 = puVar2 + 1;
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      piVar3 = (int *)(**(code **)*puVar2)(1);
    }
    return CONCAT31((int3)((uint)piVar3 >> 8),(char)uVar5);
  }
  pvVar4 = FUN_00c687d0(pvVar4,param_3,param_5);
  if (pvVar4 == (void *)0x0) {
    uVar5 = FUN_00b0f2b0(puVar2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                         param_11,param_14,param_15,param_16,param_17,param_12,'\0',param_19,
                         &local_c,local_14,(int)param_20);
    uVar6 = FUN_007462e0((int *)&local_10);
    return CONCAT31((int3)((uint)uVar6 >> 8),(char)uVar5);
  }
  uVar5 = FUN_00b0c930(puVar2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                       param_11,param_12,param_14,param_15,param_16,param_17,param_19,&local_c,
                       local_14,param_20);
  uVar6 = FUN_007462e0((int *)&local_10);
  return CONCAT31((int3)((uint)uVar6 >> 8),(char)uVar5);
}

