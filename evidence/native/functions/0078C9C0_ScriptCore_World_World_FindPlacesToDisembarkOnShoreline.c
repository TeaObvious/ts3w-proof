/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163578 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPlacesToDisembarkOnShoreline [assembly=ScriptCore token=0x060007AE;
   objId: System.UInt64, pos: Sims3.SimIFace.Vector3&, requestCount: System.UInt32, posArray:
   System.Single[]&, orientArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl
ScriptCore.World::World_FindPlacesToDisembarkOnShoreline
          (undefined4 param_1,undefined4 param_2,undefined4 *param_3,uint param_4,undefined4 param_5
          ,int param_6)

{
  longlong lVar1;
  bool bVar2;
  void *pvVar3;
  undefined4 *puVar4;
  int iVar5;
  int *piVar6;
  int unaff_EBX;
  int unaff_EDI;
  int iVar7;
  uint local_40;
  void *local_3c;
  undefined4 *local_38;
  void *local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 local_20 [28];
  
  pvVar3 = ObjectRegistry_GetGlobal();
  puVar4 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (puVar4 != (undefined4 *)0x0) {
    piVar6 = puVar4 + 1;
    LOCK();
    *piVar6 = *piVar6 + 1;
    UNLOCK();
    local_38 = puVar4;
    if (param_3 != (undefined4 *)0x0) {
      iVar5 = thunk_FUN_00835d40();
      if (iVar5 != 0) {
        local_34 = (void *)FUN_00829600(iVar5);
        if (local_34 != (void *)0x0) {
          piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
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
          pvVar3 = (void *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                                        "World/Placement",0);
          lVar1 = (ulonglong)(param_4 * 4) * 4;
          local_3c = (void *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) |
                                          (uint)lVar1,"World/Placement",0);
          bVar2 = FUN_0065cf20(local_34,local_38,(undefined1 (*) [16])local_20,param_4,&local_40,
                               (int)pvVar3,(int)local_3c);
          if (bVar2) {
            (**(code **)(*piVar6 + 0x90))(param_5,local_40 * 3);
            iVar5 = unaff_EBX * 4;
            iVar7 = param_6;
            (**(code **)(*piVar6 + 0x90))(param_6,iVar5);
            (**(code **)(*piVar6 + 0xa8))(param_5,pvVar3,0,unaff_EDI * 3);
            (**(code **)(*piVar6 + 0xa8))(param_6,iVar5,0,iVar7 * 4);
          }
          Memory_FreeIfNonNull(pvVar3);
          Memory_FreeIfNonNull(local_3c);
          FUN_007462e0((int *)&local_38);
          return bVar2;
        }
      }
    }
    LOCK();
    iVar5 = *piVar6;
    *piVar6 = *piVar6 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar6 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
  }
  return false;
}

