/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161410 (TS3W.exe).
   ScriptCore.Objects::Objects_SetTransform [assembly=ScriptCore token=0x06000003; id:
   System.UInt64, transform: Sims3.SimIFace.Matrix44; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. FullGUID andby value Matrix44. Convertsfour rows;
   clearsLocation flag80; WorldMatrix setter THEN Animationinterface+28 orTransformdirtyfallback.
   This orderingdiffersfromposition/rotation. */

void __cdecl ScriptCore.Objects::Objects_SetTransform(ulonglong guid,TS3WManagedMatrix44 matrix)

{
  void *pvVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  float *pfVar6;
  void *pvVar7;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50 [4];
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar2 != (void *)0x0) {
      puVar3 = (undefined4 *)FUN_0076c090(&matrix.lane12,local_20);
      puVar4 = (undefined4 *)FUN_0076c090(&matrix.lane8,local_50);
      puVar5 = (undefined4 *)FUN_0076c090(&matrix.lane4,local_30);
      pfVar6 = (float *)FUN_0076c090(&matrix,local_40);
      local_90 = *pfVar6;
      fStack_8c = pfVar6[1];
      fStack_88 = pfVar6[2];
      fStack_84 = pfVar6[3];
      local_80 = *puVar5;
      uStack_7c = puVar5[1];
      uStack_78 = puVar5[2];
      uStack_74 = puVar5[3];
      local_70 = *puVar4;
      uStack_6c = puVar4[1];
      uStack_68 = puVar4[2];
      uStack_64 = puVar4[3];
      local_60 = *puVar3;
      uStack_5c = puVar3[1];
      uStack_58 = puVar3[2];
      uStack_54 = puVar3[3];
      pvVar7 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
      if (pvVar7 != (void *)0x0) {
        *(uint *)((int)pvVar7 + 0x2c) = *(uint *)((int)pvVar7 + 0x2c) & 0xffffff7f;
      }
      TransformComponent_SetWorldMatrix(pvVar2,&local_90);
      pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011dd484);
      if (pvVar2 != (void *)0x0) {
        (**(code **)(*(int *)((int)pvVar2 + 8) + 0x28))();
        return;
      }
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
      if (pvVar1 != (void *)0x0) {
        TransformComponent_MarkDerivedStateDirty(pvVar1);
      }
    }
  }
  return;
}

