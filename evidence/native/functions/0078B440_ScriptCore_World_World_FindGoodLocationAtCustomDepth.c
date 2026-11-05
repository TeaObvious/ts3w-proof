/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011634e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
          (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
          uint param_6,uint param_7,int param_8,uint param_9,int param_10,int param_11,int param_12,
          int param_13,float param_14,float param_15,float *param_16,float *param_17,char param_18,
          int param_19,float param_20)

{
  int iVar1;
  bool bVar2;
  void *pvVar3;
  undefined4 *object;
  int *piVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  ulonglong *local_14;
  undefined4 *local_10;
  float local_c;
  float local_8;
  float local_4;
  
  local_c = param_20;
  local_8 = param_3;
  local_4 = param_5;
  pvVar3 = ObjectRegistry_GetGlobal();
  object = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (object == (undefined4 *)0x0) {
    return 0;
  }
  LOCK();
  object[1] = object[1] + 1;
  pvVar3 = DAT_011edbc4;
  UNLOCK();
  param_20 = 0.0;
  local_14 = (ulonglong *)0x0;
  local_10 = object;
  if (param_13 != 0) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar4 + 0x68))(param_13,&local_14,&param_20);
  }
  if (param_18 == '\0') {
    pvVar3 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar3,param_3,param_5);
    if (pvVar3 == (void *)0x0) {
      uVar5 = FUN_00b0f2b0(object,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                           param_11,param_14,param_15,param_16,param_17,param_12,'\0',param_19,
                           &local_c,(int)local_14,(int)param_20);
      uVar6 = FUN_007462e0((int *)&local_10);
      return CONCAT31((int3)((uint)uVar6 >> 8),(char)uVar5);
    }
    bVar2 = LotFgl_FindWithDepthRange
                      (object,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                       param_11,(void *)param_12,param_14,param_15,param_16,param_17,param_19,
                       &local_c,local_14,(uint)param_20);
    uVar5 = FUN_007462e0((int *)&local_10);
    return CONCAT31((int3)((uint)uVar5 >> 8),bVar2);
  }
  uVar5 = FUN_00b0f2b0(object,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10,
                       param_11,param_14,param_15,param_16,param_17,param_12,'\x01',param_19,
                       &local_c,(int)local_14,(int)param_20);
  piVar4 = object + 1;
  LOCK();
  iVar1 = *piVar4;
  *piVar4 = *piVar4 + -1;
  UNLOCK();
  if (iVar1 == 1) {
    LOCK();
    *piVar4 = 1;
    UNLOCK();
    piVar4 = (int *)(**(code **)*object)(1);
  }
  return CONCAT31((int3)((uint)piVar4 >> 8),(char)uVar5);
}

