/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original PC1.67 ECX renderer state, observed plainRET; the fastcall prototype is inferred. In the
   selected time lane loads Single011CEDAC, adds receiver+254 with ADDSS, multiplies by
   Single00FF9618, truncates through CVTTSS2SI then converts with CVTSI2SS, multiplies
   Single00FF9614 and subtracts with SUBSS. Stores the resulting binary32phase at+254 and replicates
   it into the outgoing constant lanes before6C9880 for selector1. There is no pauseflag test in
   this selected phase path. The absolute input timer producer, constant semantics and complete
   scheduler/resource policy are separate evidence. */

void __fastcall Renderer_PublishFrameTimeConstants(int param_1)

{
  void *this;
  int *piVar1;
  undefined4 *puVar2;
  float10 fVar3;
  double dVar4;
  float local_d4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float fStack_24;
  float afStack_20 [7];
  
  fVar3 = ElapsedClock_ReadScaledTicks((void *)(param_1 + 0x238));
  local_c0 = (float)fVar3;
  fStack_ac = fStack_bc;
  fStack_a8 = fStack_b8;
  fStack_a4 = fStack_b4;
  local_b0 = local_c0;
  dVar4 = floor((double)local_c0);
  fStack_84 = (float)dVar4;
  fStack_b8 = (float)*(int *)(param_1 + 0x250);
  fStack_bc = local_c0 - fStack_84;
  fStack_8c = local_c0 - fStack_84;
  fStack_88 = local_c0 - fStack_84;
  fStack_84 = local_c0 - fStack_84;
  if (*(int *)(param_1 + 0x250) < 0) {
    fStack_b8 = fStack_b8 + FLOAT_00f99948;
  }
  fStack_b4 = *(float *)(param_1 + 0x370) * (float)s_7E_B7Renderer_DisplayList_00ff961b._1_4_;
  local_90 = fStack_bc;
  FUN_006c9880(*(void **)(param_1 + 0x324),0,&local_c0);
  fStack_68 = DAT_011cedac;
  local_70 = *(float *)(param_1 + 0x254) + DAT_011cedac;
  local_b0 = local_c0;
  fStack_ac = fStack_bc;
  fStack_a8 = fStack_b8;
  fStack_a4 = fStack_b4;
  local_70 = local_70 - (float)(int)(local_70 * _DAT_00ff9618) * _DAT_00ff9614;
  fStack_84 = *(float *)(param_1 + 600);
  local_90 = local_c0 - fStack_84;
  fStack_8c = local_c0 - fStack_84;
  fStack_88 = local_c0 - fStack_84;
  fStack_84 = local_c0 - fStack_84;
  *(float *)(param_1 + 0x254) = local_70;
  *(float *)(param_1 + 600) = local_c0;
  fStack_6c = local_70;
  fStack_64 = local_90;
  FUN_006c9880(*(void **)(param_1 + 0x324),1,&local_70);
  if (DAT_011edbc4 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)FUN_00c60a50(DAT_011edbc4);
  }
  local_d4 = DAT_00ff9610;
  piVar1 = (int *)FloraRenderer_GetService();
  if (piVar1 != (int *)0x0) {
    fVar3 = (float10)(**(code **)(*piVar1 + 0x14))();
    local_d4 = (float)fVar3;
  }
  if (this == (void *)0x0) {
    uStack_a0 = 0;
    uStack_9c = 0;
    uStack_98 = 0;
    uStack_94 = 0;
    uStack_60 = 0;
    uStack_5c = 0;
    uStack_58 = 0;
    uStack_54 = 0;
    FUN_006c9880(*(void **)(param_1 + 0x324),2,&uStack_60);
    puVar2 = &uStack_50;
    uStack_50 = uStack_a0;
    uStack_4c = uStack_9c;
    uStack_48 = uStack_98;
    uStack_44 = uStack_94;
  }
  else {
    local_30 = *(undefined4 *)((int)this + 0x120);
    uStack_2c = *(undefined4 *)((int)this + 0x124);
    uStack_28 = *(undefined4 *)((int)this + 0x128);
    fStack_24 = local_d4;
    FUN_006c9880(*(void **)(param_1 + 0x324),2,&local_30);
    puVar2 = (undefined4 *)FUN_00c7e3c0(this,afStack_20);
    uStack_a0 = *puVar2;
    uStack_9c = puVar2[1];
    uStack_98 = puVar2[2];
    uStack_74 = 0;
    puVar2 = &uStack_a0;
    uStack_94 = 0;
    uStack_80 = uStack_a0;
    uStack_7c = uStack_9c;
    uStack_78 = uStack_98;
  }
  FUN_006c9880(*(void **)(param_1 + 0x324),3,puVar2);
  FUN_006c9880(*(void **)(param_1 + 0x324),4,(undefined4 *)&DAT_011d1a20);
  FUN_006c9880(*(void **)(param_1 + 0x324),5,(undefined4 *)&DAT_011d18e0);
  FUN_006c9880(*(void **)(param_1 + 0x324),6,(undefined4 *)&DAT_011d1a30);
  FUN_006c9880(*(void **)(param_1 + 0x324),7,(undefined4 *)&DAT_011d1a40);
  FUN_006c9880(*(void **)(param_1 + 0x324),8,(undefined4 *)&DAT_011d1a50);
  fStack_40 = *(float *)(param_1 + 0x2a8);
  fStack_3c = FLOAT_00f998f8 / fStack_40;
  fStack_38 = fStack_40;
  fStack_34 = fStack_40;
  FUN_006c98b0(*(void **)(param_1 + 0x324),9,&fStack_40);
  FUN_006c96f0(*(int *)(param_1 + 0x324));
  return;
}

