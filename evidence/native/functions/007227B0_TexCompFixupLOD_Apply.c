/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 applied LOD-fixup callback. Adds type4 overrides in diffusemap then specularmap
   order when the corresponding key TYPE word is nonzero, using lowercased FNV1 name hashes.
   Flagbit1 also adds AlphaMaskThreshold; no physical-file value is asserted for its runtime data
   pointer. Passes flagbit0 as allow-resource-type-change and bit1 as append-missing, with
   descriptor exclusion hashC09C7582. Model byte+72 selects clone/refusal6DB3D0 or in-place6DB170;
   no overrides returns the original with retained reference. Success/refusal is normalized AL, not
   a full-EAX Boolean. Descriptor-hash meaning and broader renderer publication remain separate. */

undefined4 __thiscall
TexCompFixupLOD_Apply
          (void *this,int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 extraout_EAX;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  uint *puVar5;
  bool bVar6;
  int *local_f4;
  uint local_f0 [4];
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined *local_d0;
  undefined4 local_cc;
  uint *local_c4;
  int local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  byte local_b4;
  byte local_b3;
  void *pvStack_ac;
  uint uStack_a8;
  undefined4 uStack_a4;
  uint *local_90;
  uint *local_8c;
  uint *local_88;
  uint local_80 [30];
  uint local_8;
  
  local_90 = local_80;
  local_88 = &local_8;
  local_8c = local_90;
  if (*(int *)((int)this + 0x10) != 0) {
    local_f0[1] = HashLowercasedCStringFNV1("diffusemap");
    puVar5 = local_8c;
    local_e0 = *(undefined4 *)((int)this + 8);
    local_d4 = *(undefined4 *)((int)this + 0x14);
    local_dc = *(undefined4 *)((int)this + 0xc);
    local_d8 = *(undefined4 *)((int)this + 0x10);
    local_f0[0] = 4;
    if (local_8c < local_88) {
      bVar6 = local_8c != (uint *)0x0;
      local_8c = local_8c + 10;
      if (bVar6) {
        puVar4 = local_f0;
        for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
    }
    else {
      FUN_0068ea10(&local_90,local_8c,local_f0);
    }
  }
  if (*(int *)((int)this + 0x20) != 0) {
    local_f0[1] = HashLowercasedCStringFNV1("specularmap");
    puVar5 = local_8c;
    local_dc = *(undefined4 *)((int)this + 0x1c);
    local_e0 = *(undefined4 *)((int)this + 0x18);
    local_d8 = *(undefined4 *)((int)this + 0x20);
    local_d4 = *(undefined4 *)((int)this + 0x24);
    local_f0[0] = 4;
    if (local_8c < local_88) {
      bVar6 = local_8c != (uint *)0x0;
      local_8c = local_8c + 10;
      if (bVar6) {
        puVar4 = local_f0;
        for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
    }
    else {
      FUN_0068ea10(&local_90,local_8c,local_f0);
    }
  }
  if ((*(byte *)((int)this + 0x28) & 2) != 0) {
    local_e0 = 0;
    local_dc = 0;
    local_d8 = 0;
    local_d4 = 0;
    local_f0[1] = HashLowercasedCStringFNV1("AlphaMaskThreshold");
    puVar5 = local_8c;
    local_f0[0] = 1;
    local_cc = 1;
    local_d0 = &DAT_0115c85c;
    if (local_8c < local_88) {
      bVar6 = local_8c != (uint *)0x0;
      local_8c = local_8c + 10;
      if (bVar6) {
        puVar4 = local_f0;
        for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
          *puVar5 = *puVar4;
          puVar4 = puVar4 + 1;
          puVar5 = puVar5 + 1;
        }
      }
    }
    else {
      FUN_0068ea10(&local_90,local_8c,local_f0);
    }
  }
  if (local_90 != local_8c) {
    FUN_006db0a0(&local_c4);
    local_c0 = ((int)local_8c - (int)local_90) / 0x28;
    local_c4 = local_90;
    local_b3 = *(byte *)((int)this + 0x28) & 1;
    local_b4 = *(byte *)((int)this + 0x28) >> 1 & 1;
    local_bc = param_3;
    local_b8 = 0xc09c7582;
    local_f4 = (int *)0x0;
    if (*(char *)((int)param_1 + 0x72) == '\0') {
      uVar1 = ModelLOD_CloneWithMaterialSubstitutions(param_1,&local_f4,(int *)&local_c4,param_4);
      if ((char)uVar1 == '\0') {
        if (local_f4 != (int *)0x0) {
          (**(code **)(*local_f4 + 4))();
        }
        uVar2 = FUN_00687830((int)&local_c4);
        return uVar2 & 0xffffff00;
      }
    }
    else {
      (**(code **)*param_1)();
      local_f4 = param_1;
      ModelLOD_ApplyMaterialSubstitutions(param_1,(int)param_1,(int *)&local_c4,param_4);
    }
    *param_2 = local_f4;
    (**(code **)*local_f4)();
    if (local_f4 != (int *)0x0) {
      (**(code **)(*local_f4 + 4))();
    }
    uVar1 = FUN_0073ebe0((int)pvStack_ac,uStack_a8);
    uStack_a4 = 0;
    if (1 < uStack_a8) {
      Memory_FreeIfNonNull(pvStack_ac);
      uVar1 = extraout_EAX;
    }
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  *param_2 = param_1;
  uVar1 = (**(code **)*param_1)();
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

