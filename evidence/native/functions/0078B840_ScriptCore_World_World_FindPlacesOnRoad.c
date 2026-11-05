/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011634f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPlacesOnRoad [assembly=ScriptCore token=0x060007A2; objId:
   System.UInt64, objIdsToIgnore: System.UInt64[], pos: Sims3.SimIFace.Vector3&, option:
   System.UInt32, requestCount: System.UInt32, separation: System.Single, posArray:
   System.Single[]&, orientArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.World::World_FindPlacesOnRoad
          (undefined4 param_1,undefined4 param_2,int param_3,float *param_4,int param_5,uint param_6
          ,float param_7,undefined4 param_8,undefined4 param_9)

{
  int iVar1;
  longlong lVar2;
  bool bVar3;
  void *this;
  int *piVar4;
  float *allocation;
  int unaff_EBX;
  undefined4 uStack_4c;
  uint local_48;
  undefined4 local_44;
  undefined4 local_40;
  float *pfStack_3c;
  undefined4 *local_38;
  void *local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  this = ObjectRegistry_GetGlobal();
  if (this != (void *)0x0) {
    local_38 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
    if (local_38 != (undefined4 *)0x0) {
      LOCK();
      local_38[1] = local_38[1] + 1;
      UNLOCK();
    }
    if ((param_4 != (float *)0x0) && (local_34 = DAT_011edbc4, DAT_011edbc4 != (void *)0x0)) {
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      fStack_28 = param_4[2];
      local_30 = *param_4;
      fStack_2c = param_4[1];
      local_40 = 0;
      local_44 = 0;
      fStack_24 = local_30;
      local_20 = local_30;
      fStack_1c = fStack_2c;
      fStack_18 = fStack_28;
      fStack_14 = local_30;
      if (param_3 != 0) {
        (**(code **)(*piVar4 + 0x68))(param_3,&local_40,&local_44);
      }
      lVar2 = (ulonglong)(param_6 * 3) * 4;
      local_48 = 0;
      allocation = (float *)FUN_004e4500(-(uint)((int)((ulonglong)lVar2 >> 0x20) != 0) | (uint)lVar2
                                         ,"World/Placement",0);
      lVar2 = (ulonglong)(param_6 * 4) * 4;
      pfStack_3c = (float *)FUN_004e4500(-(uint)((int)((ulonglong)lVar2 >> 0x20) != 0) | (uint)lVar2
                                         ,"World/Placement",0);
      bVar3 = FUN_00c7b490(local_34,local_38,local_40,local_44,&local_20,param_5,param_6,param_7,
                           &local_48,allocation,pfStack_3c);
      uStack_4c = CONCAT13(bVar3,(undefined3)uStack_4c);
      if (bVar3) {
        (**(code **)(*piVar4 + 0xa8))(param_8,allocation,0,local_48 * 3);
        (**(code **)(*piVar4 + 0xa8))(param_9,uStack_4c,0,unaff_EBX * 4);
      }
      Memory_FreeIfNonNull(allocation);
      Memory_FreeIfNonNull(pfStack_3c);
      FUN_007462e0((int *)&local_38);
      return bVar3;
    }
    if (local_38 != (undefined4 *)0x0) {
      piVar4 = local_38 + 1;
      LOCK();
      iVar1 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*local_38)(1);
      }
    }
  }
  return false;
}

