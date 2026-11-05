/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX object plus aligned output pointer, RET04, EAX returns that exact
   output pointer on both exits. If object+40 bit0 is set and scene+30/spatialowner+2C are nonnull,
   obtain actual owner bounds through007053D0 and copy32bytes. Otherwise get the real object world
   matrix through006FACD0, copy all64bytes and transform local bounds+50 through0068C370 into
   output. Exact matrix/cell helper implementations are separate boundaries; no native per-vertex
   scan or current normalization/packet key is inferred. */

undefined4 * __thiscall SceneObject_WriteWorldBounds(void *this,undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  float *pfVar6;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [19];
  
  if ((((~*(byte *)((int)this + 0x40) & 1) == 0) && (iVar1 = *(int *)((int)this + 0x30), iVar1 != 0)
      ) && (*(int *)(iVar1 + 0x2c) != 0)) {
    puVar5 = (undefined4 *)FUN_007053d0(*(void **)(iVar1 + 0x2c),&local_90);
    uVar2 = puVar5[1];
    uVar3 = puVar5[2];
    uVar4 = puVar5[3];
    *param_1 = *puVar5;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
    uVar2 = puVar5[5];
    uVar3 = puVar5[6];
    uVar4 = puVar5[7];
    param_1[4] = puVar5[4];
    param_1[5] = uVar2;
    param_1[6] = uVar3;
    param_1[7] = uVar4;
    return param_1;
  }
  pfVar6 = (float *)FUN_006facd0(this,local_50);
  local_90 = *pfVar6;
  fStack_8c = pfVar6[1];
  fStack_88 = pfVar6[2];
  fStack_84 = pfVar6[3];
  local_80 = pfVar6[4];
  fStack_7c = pfVar6[5];
  fStack_78 = pfVar6[6];
  fStack_74 = pfVar6[7];
  local_70 = pfVar6[8];
  fStack_6c = pfVar6[9];
  fStack_68 = pfVar6[10];
  fStack_64 = pfVar6[0xb];
  local_60 = pfVar6[0xc];
  fStack_5c = pfVar6[0xd];
  fStack_58 = pfVar6[0xe];
  fStack_54 = pfVar6[0xf];
  FUN_0068c370(param_1,(float *)((int)this + 0x50),(undefined1 (*) [16])&local_90);
  return param_1;
}

