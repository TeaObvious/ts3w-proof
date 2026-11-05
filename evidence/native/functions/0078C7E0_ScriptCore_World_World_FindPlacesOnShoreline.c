/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163570 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_FindPlacesOnShoreline [assembly=ScriptCore token=0x060007AD; objId:
   System.UInt64, pos: Sims3.SimIFace.Vector3&, requestCount: System.UInt32,
   bAllowPointsAboveGroundLevel: System.Boolean, posArray: System.Single[]&, orientArray:
   System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.World::World_FindPlacesOnShoreline
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,uint param_4,char param_5,
          undefined4 param_6,int param_7)

{
  longlong lVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  int unaff_EBX;
  int unaff_EDI;
  int iVar5;
  int iVar6;
  uint local_40;
  int local_3c;
  undefined4 *local_38;
  void *local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 local_20 [28];
  
  iVar3 = FUN_00937570();
  local_38 = (undefined4 *)FUN_00937f80(iVar3);
  if (local_38 != (undefined4 *)0x0) {
    piVar4 = local_38 + 1;
    LOCK();
    *piVar4 = *piVar4 + 1;
    UNLOCK();
    if ((param_3 != (undefined4 *)0x0) && (local_34 = DAT_011edbc4, DAT_011edbc4 != (void *)0x0)) {
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      uStack_28 = param_3[2];
      local_30 = *param_3;
      uStack_2c = param_3[1];
      lVar1 = (ulonglong)(param_4 * 3) * 4;
      local_40 = 0;
      uStack_24 = local_30;
      local_20._0_4_ = local_30;
      local_20._4_4_ = uStack_2c;
      local_20._8_4_ = uStack_28;
      local_20._12_4_ = local_30;
      iVar3 = FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                           "World/Placement",0);
      lVar1 = (ulonglong)(param_4 * 4) * 4;
      local_3c = FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                              "World/Placement",0);
      bVar2 = FUN_00c757f0(local_34,local_38,(undefined1 (*) [16])local_20,param_4,param_5,&local_40
                           ,iVar3,local_3c);
      if (bVar2) {
        (**(code **)(*piVar4 + 0x90))(param_6,local_40 * 3);
        iVar6 = unaff_EBX * 4;
        iVar5 = param_7;
        (**(code **)(*piVar4 + 0x90))(param_7,iVar6);
        (**(code **)(*piVar4 + 0xa8))(param_6,iVar3,0,unaff_EDI * 3);
        (**(code **)(*piVar4 + 0xa8))(param_7,iVar6,0,iVar5 * 4);
      }
      FUN_004e44e0(iVar3);
      FUN_004e44e0(local_3c);
      FUN_007462e0((int *)&local_38);
      return bVar2;
    }
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
  return false;
}

