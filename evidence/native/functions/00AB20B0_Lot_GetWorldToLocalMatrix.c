/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Static PC1.67 original instruction comparison; 412 complete owned bytes/102 actual Listing
   instructions. No runtime execution.
   ECX lot and output pointer, RET4. Active flag+0x444 AND nonzero objectID+0x460/+0x464
   admits00AB1B00 quaternion/translation, SSE matrix construction then00562220 inverse; otherwise
   identity. Returns output pointer in EAX. This original object-linked transform is not proof of
   current simple lot-angle/localY equivalence. */

undefined1 (*) [16] __thiscall Lot_GetWorldToLocalMatrix(void *this,undefined1 (*param_1) [16])

{
  float *pfVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float local_70 [8];
  uint local_50;
  uint uStack_4c;
  uint uStack_48;
  uint uStack_44;
  uint local_40;
  uint uStack_3c;
  uint uStack_38;
  uint uStack_34;
  uint local_30;
  uint uStack_2c;
  uint uStack_28;
  uint uStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  if ((*(char *)((int)this + 0x444) != '\0') &&
     (*(int *)((int)this + 0x460) != 0 || *(int *)((int)this + 0x464) != 0)) {
    pfVar1 = (float *)Lot_GetAttachedWorldQuaternionTranslation(this,local_70);
    fVar2 = *pfVar1 * 1.4142135;
    fVar4 = pfVar1[1] * 1.4142135;
    fVar5 = pfVar1[2] * 1.4142135;
    fVar6 = pfVar1[3] * 1.4142135;
    fVar7 = (0.0 - fVar2) * fVar2 + 0.5;
    fVar8 = (0.0 - fVar4) * fVar4 + 0.5;
    fVar9 = (0.0 - fVar5) * fVar5 + 0.5;
    fVar3 = fVar6 * fVar5 + fVar4 * fVar2;
    fVar10 = fVar4 * fVar2 - fVar6 * fVar5;
    fVar11 = fVar8 + fVar7;
    local_20 = pfVar1[4];
    fStack_1c = pfVar1[5];
    fStack_18 = pfVar1[6];
    local_50 = (uint)(fVar9 + fVar8) & _DAT_011b0670;
    uStack_4c = (uint)fVar3 & uRam011b0674;
    uStack_48 = (uint)(fVar2 * fVar5 - fVar6 * fVar4) & uRam011b0678;
    uStack_44 = (uint)fVar10 & uRam011b067c;
    local_40 = (uint)fVar10 & _DAT_011b0670;
    uStack_3c = (uint)(fVar7 + fVar9) & uRam011b0674;
    uStack_38 = (uint)(fVar6 * fVar2 + fVar5 * fVar4) & uRam011b0678;
    uStack_34 = (uint)fVar3 & uRam011b067c;
    local_30 = (uint)(fVar6 * fVar4 + fVar2 * fVar5) & _DAT_011b0670;
    uStack_2c = (uint)(fVar5 * fVar4 - fVar6 * fVar2) & uRam011b0674;
    uStack_28 = (uint)fVar11 & uRam011b0678;
    uStack_24 = (uint)fVar11 & uRam011b067c;
    uStack_14 = 0x3f800000;
    Matrix4_InvertWithReplicatedDeterminant(param_1,(undefined1 (*) [16])&local_50,local_70);
    return param_1;
  }
  *(float *)*param_1 = 1.0;
  *(undefined4 *)(*param_1 + 4) = 0;
  *(undefined4 *)(*param_1 + 8) = 0;
  *(undefined4 *)(*param_1 + 0xc) = 0;
  *(undefined4 *)param_1[1] = 0;
  *(float *)(param_1[1] + 4) = 1.0;
  *(undefined4 *)(param_1[1] + 8) = 0;
  *(undefined4 *)(param_1[1] + 0xc) = 0;
  *(undefined4 *)param_1[2] = 0;
  *(undefined4 *)(param_1[2] + 4) = 0;
  *(float *)(param_1[2] + 8) = 1.0;
  *(undefined4 *)(param_1[2] + 0xc) = 0;
  *(undefined4 *)param_1[3] = 0;
  *(undefined4 *)(param_1[3] + 4) = 0;
  *(undefined4 *)(param_1[3] + 8) = 0;
  *(float *)(param_1[3] + 0xc) = 1.0;
  return param_1;
}

