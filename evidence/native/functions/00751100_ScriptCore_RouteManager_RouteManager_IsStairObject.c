/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161da0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_IsStairObject [assembly=ScriptCore token=0x06001085; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.RouteManager::RouteManager_IsStairObject(int param_1,float param_2)

{
  float fVar1;
  void *pvVar2;
  void *pvVar3;
  float *pfVar4;
  uint uVar5;
  float fVar6;
  undefined1 uVar7;
  void *local_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  pfVar4 = (float *)0x0;
  if (param_1 != 0 || param_2 != 0.0) {
    pvVar2 = ObjectRegistry_GetGlobal();
    pfVar4 = (float *)0x0;
    if (pvVar2 != (void *)0x0) {
      pvVar3 = (void *)FUN_0074bfd0();
      if (pvVar3 == (void *)0x0) {
        pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
        pfVar4 = (float *)0x0;
        if (pvVar2 == (void *)0x0) goto LAB_00751218;
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea158);
        pfVar4 = (float *)0x0;
        if (pvVar2 == (void *)0x0) goto LAB_00751218;
        pfVar4 = TransformComponent_GetWorldPosition(pvVar2,&local_30);
        if (DAT_011edbc4 == (void *)0x0) goto LAB_00751218;
        local_40 = local_30;
        fStack_3c = (float)uStack_2c;
        fStack_38 = fStack_28;
        uStack_34 = uStack_24;
        local_20 = local_30;
        uStack_1c = uStack_2c;
        fStack_18 = fStack_28;
        uStack_14 = uStack_24;
        pvVar3 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,local_30,fStack_28);
        pfVar4 = (float *)0x0;
        if (pvVar3 == (void *)0x0) goto LAB_00751218;
      }
      pfVar4 = (float *)0x0;
      if (*(void **)((int)pvVar3 + 0x2b4) != (void *)0x0) {
        FUN_00b15110(*(void **)((int)pvVar3 + 0x2b4),(int *)&local_44);
        fVar1 = *(float *)(*(int *)((int)local_44 + 4) + *(int *)((int)local_44 + 8) * 4);
        uVar7 = 0;
        pfVar4 = PickCandidateMap_Begin(local_44,&local_30);
        local_40 = *pfVar4;
        fVar6 = pfVar4[1];
        fStack_3c = fVar6;
        if (local_40 != fVar1) {
          while ((*(int *)((int)local_40 + 0x78) != param_1 ||
                 (fVar6 = *(float *)((int)local_40 + 0x7c), fVar6 != param_2))) {
            uVar5 = FUN_0074efc0((int *)&local_40);
            if (local_40 == fVar1) {
              return uVar5 & 0xffffff00;
            }
          }
          uVar7 = 1;
        }
        return CONCAT31((int3)((uint)fVar6 >> 8),uVar7);
      }
    }
  }
LAB_00751218:
  return (uint)pfVar4 & 0xffffff00;
}

