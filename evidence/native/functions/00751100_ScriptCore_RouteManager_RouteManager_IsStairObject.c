/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161da0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_IsStairObject [assembly=ScriptCore token=0x06001085; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.RouteManager::RouteManager_IsStairObject(int param_1,float param_2)

{
  float fVar1;
  int iVar2;
  void *pvVar3;
  uint uVar4;
  float *pfVar5;
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
  
  uVar4 = 0;
  if (param_1 != 0 || param_2 != 0.0) {
    iVar2 = FUN_00937570();
    uVar4 = 0;
    if (iVar2 != 0) {
      pvVar3 = (void *)FUN_0074bfd0();
      if (pvVar3 == (void *)0x0) {
        pvVar3 = (void *)FUN_00937f80(iVar2);
        uVar4 = 0;
        if (pvVar3 == (void *)0x0) goto LAB_00751218;
        pvVar3 = (void *)FUN_00934260(pvVar3,DAT_011ea158);
        uVar4 = 0;
        if (pvVar3 == (void *)0x0) goto LAB_00751218;
        uVar4 = FUN_00957a30(pvVar3,&local_30);
        if (DAT_011edbc4 == (void *)0x0) goto LAB_00751218;
        local_40 = local_30;
        fStack_3c = (float)uStack_2c;
        fStack_38 = fStack_28;
        uStack_34 = uStack_24;
        local_20 = local_30;
        uStack_1c = uStack_2c;
        fStack_18 = fStack_28;
        uStack_14 = uStack_24;
        pvVar3 = FUN_00c687d0(DAT_011edbc4,local_30,fStack_28);
        uVar4 = 0;
        if (pvVar3 == (void *)0x0) goto LAB_00751218;
      }
      uVar4 = 0;
      if (*(void **)((int)pvVar3 + 0x2b4) != (void *)0x0) {
        FUN_00b15110(*(void **)((int)pvVar3 + 0x2b4),(int *)&local_44);
        fVar1 = *(float *)(*(int *)((int)local_44 + 4) + *(int *)((int)local_44 + 8) * 4);
        uVar7 = 0;
        pfVar5 = (float *)FUN_0093ad70(local_44,(int *)&local_30);
        local_40 = *pfVar5;
        fVar6 = pfVar5[1];
        fStack_3c = fVar6;
        if (local_40 != fVar1) {
          while ((*(int *)((int)local_40 + 0x78) != param_1 ||
                 (fVar6 = *(float *)((int)local_40 + 0x7c), fVar6 != param_2))) {
            uVar4 = FUN_0074efc0((int *)&local_40);
            if (local_40 == fVar1) {
              return uVar4 & 0xffffff00;
            }
          }
          uVar7 = 1;
        }
        return CONCAT31((int3)((uint)fVar6 >> 8),uVar7);
      }
    }
  }
LAB_00751218:
  return uVar4 & 0xffffff00;
}

