/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011634f0 (original PC 1.67 TS3W.exe).
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
  longlong lVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  float *pfVar5;
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
  
  iVar3 = FUN_00937570();
  if (iVar3 != 0) {
    local_38 = (undefined4 *)FUN_00937f80(iVar3);
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
      lVar1 = (ulonglong)(param_6 * 3) * 4;
      local_48 = 0;
      pfVar5 = (float *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                                     "World/Placement",0);
      lVar1 = (ulonglong)(param_6 * 4) * 4;
      pfStack_3c = (float *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1
                                         ,"World/Placement",0);
      bVar2 = FUN_00c7b490(local_34,local_38,local_40,local_44,&local_20,param_5,param_6,param_7,
                           &local_48,pfVar5,pfStack_3c);
      uStack_4c = CONCAT13(bVar2,(undefined3)uStack_4c);
      if (bVar2) {
        (**(code **)(*piVar4 + 0xa8))(param_8,pfVar5,0,local_48 * 3);
        (**(code **)(*piVar4 + 0xa8))(param_9,uStack_4c,0,unaff_EBX * 4);
      }
      FUN_004e44e0((int)pfVar5);
      FUN_004e44e0((int)pfStack_3c);
      FUN_007462e0((int *)&local_38);
      return bVar2;
    }
    if (local_38 != (undefined4 *)0x0) {
      piVar4 = local_38 + 1;
      LOCK();
      iVar3 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar3 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*local_38)(1);
      }
    }
  }
  return false;
}

