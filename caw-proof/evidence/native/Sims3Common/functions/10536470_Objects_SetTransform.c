/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_SetTransform. Export ordinal(s): 491.
   Entry VA: 0x10536470. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB2. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Objects_SetTransform(void)

{
  int iVar1;
  void *this;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  float *pfVar6;
  undefined4 extraout_EDX;
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
  
                    /* 0x536470  491  Objects_SetTransform */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(this,DAT_10c8d998);
    if (pvVar2 != (void *)0x0) {
      puVar3 = (undefined4 *)FUN_1055db60(&stack0x0000003c,local_20);
      puVar4 = (undefined4 *)FUN_1055db60(&stack0x0000002c,local_50);
      puVar5 = (undefined4 *)FUN_1055db60(&stack0x0000001c,local_30);
      pfVar6 = (float *)FUN_1055db60(&stack0x0000000c,local_40);
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
      iVar1 = FUN_10726da0(this,DAT_10c70408);
      if (iVar1 != 0) {
        *(uint *)(iVar1 + 0x2c) = *(uint *)(iVar1 + 0x2c) & 0xffffff7f;
      }
      FUN_1074afe0(pvVar2,extraout_EDX,&local_90);
      iVar1 = FUN_10726da0(this,DAT_10c80cc4);
      if (iVar1 != 0) {
        (**(code **)(*(int *)(iVar1 + 8) + 0x28))();
        return;
      }
      iVar1 = FUN_10726da0(this,DAT_10c8d998);
      if (iVar1 != 0) {
        FUN_10748750(iVar1);
      }
    }
  }
  return;
}

