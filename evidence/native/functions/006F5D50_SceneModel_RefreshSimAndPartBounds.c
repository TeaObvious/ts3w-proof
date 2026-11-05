/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): ECX model plus source descriptor. Original
   Simoverride flag00200000 selects135 hash table entries at00FFA5C0 (0x21Cbytes), skip missing
   selectors, union final model-space bone translations, pad.15, union head0F97B21B with.30 radius,
   write bound to allparts. Other branches copy/static-transform partbounds. Full retained body and
   original byte widths establish character bounds; an unrelated rendered-vertex union is not
   equivalent. */

uint __thiscall SceneModel_RefreshSimAndPartBounds(void *this,int param_1)

{
  void *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  bool bVar3;
  bool bVar4;
  uint in_EAX;
  undefined3 extraout_var;
  int iVar5;
  float *pfVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  uint uVar9;
  undefined1 (*pauVar10) [16];
  int local_70;
  uint local_6c;
  int local_64;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_0115c20c == '\0') {
LAB_006f5d7c:
    bVar4 = false;
  }
  else {
    in_EAX = GetNativeDescriptorTypeName_Field44((int)this);
    bVar4 = true;
    if ((in_EAX & 0x200000) == 0) goto LAB_006f5d7c;
  }
  local_6c = 0;
  if (param_1 != 0) {
    in_EAX = GetNativeDescriptorTypeName_Field44(param_1);
    local_6c = in_EAX;
  }
  if (bVar4) {
LAB_006f5dd6:
    if (*(int *)((int)this + 0x298) == 0) {
      local_70 = 0;
    }
    else {
      local_70 = AnimationRenderState_GetWorldMatrices(*(int *)((int)this + 0x298));
    }
    FUN_0068bf40(&local_30);
    if (!bVar4) {
      uVar9 = 0;
      if (local_6c != 0) {
        local_64 = 0;
        do {
          pauVar10 = (undefined1 (*) [16])(*(int *)((int)this + 0x288) + local_64);
          this_00 = *(void **)(*(int *)(param_1 + 0x40) + uVar9 * 4);
          if ((local_70 == 0) || (bVar4 = FUN_0068f4f0((int)this_00), !bVar4)) {
            puVar7 = (undefined4 *)FUN_0068f300((int)this_00);
          }
          else {
            puVar7 = (undefined4 *)FUN_0068f5b0(this_00,&local_50,local_70);
          }
          uVar8 = puVar7[1];
          uVar1 = puVar7[2];
          uVar2 = puVar7[3];
          *(undefined4 *)*pauVar10 = *puVar7;
          *(undefined4 *)(*pauVar10 + 4) = uVar8;
          *(undefined4 *)(*pauVar10 + 8) = uVar1;
          *(undefined4 *)(*pauVar10 + 0xc) = uVar2;
          uVar8 = puVar7[5];
          uVar1 = puVar7[6];
          uVar2 = puVar7[7];
          *(undefined4 *)pauVar10[1] = puVar7[4];
          *(undefined4 *)(pauVar10[1] + 4) = uVar8;
          *(undefined4 *)(pauVar10[1] + 8) = uVar1;
          *(undefined4 *)(pauVar10[1] + 0xc) = uVar2;
          FUN_0068bdf0(&local_30,(undefined1 (*) [16])&local_30,pauVar10);
          local_64 = local_64 + 0x40;
          uVar9 = uVar9 + 1;
        } while (uVar9 < local_6c);
      }
LAB_006f5ffc:
      uVar8 = SceneObject_SetLocalBoundsAndRefresh(this,&local_30);
      return CONCAT31((int3)((uint)uVar8 >> 8),1);
    }
    in_EAX = 0;
    if (((*(int *)((int)this + 0x298) != 0) &&
        (in_EAX = *(uint *)(*(int *)((int)this + 0x298) + 0x20), in_EAX != 0)) && (local_70 != 0)) {
      iVar5 = in_EAX + 0x28;
      GetNativeDescriptorTypeName_Field4(iVar5);
      uVar9 = 0;
      do {
        in_EAX = FUN_00575c80(iVar5);
        if (in_EAX != 0xffffffff) {
          in_EAX = FUN_0068beb0(&local_30,(undefined1 (*) [16])(in_EAX * 0x40 + 0x30 + local_70));
        }
        uVar9 = uVar9 + 4;
      } while (uVar9 < 0x21c);
      local_50 = local_30;
      if (local_30 <= local_20) {
        if ((_DAT_011d2c80 & 1) == 0) {
          _DAT_011d2c80 = _DAT_011d2c80 | 1;
          _DAT_011d2c70 = 0.15;
          fRam011d2c74 = 0.15;
          fRam011d2c78 = 0.15;
          fRam011d2c7c = 0.15;
        }
        local_30 = local_30 - _DAT_011d2c70;
        fStack_2c = fStack_2c - fRam011d2c74;
        fStack_28 = fStack_28 - fRam011d2c78;
        fStack_24 = fStack_24 - fRam011d2c7c;
        local_20 = local_20 + _DAT_011d2c70;
        fStack_1c = fStack_1c + fRam011d2c74;
        fStack_18 = fStack_18 + fRam011d2c78;
        fStack_14 = fStack_14 + fRam011d2c7c;
        iVar5 = FUN_00575c80(iVar5);
        if ((_DAT_011d2c80 & 2) == 0) {
          _DAT_011d2c80 = _DAT_011d2c80 | 2;
          _DAT_011d2c60 = 0.3;
          fRam011d2c64 = 0.3;
          fRam011d2c68 = 0.3;
          fRam011d2c6c = 0.3;
        }
        pfVar6 = (float *)(iVar5 * 0x40 + 0x30 + local_70);
        local_50 = *pfVar6 - _DAT_011d2c60;
        fStack_4c = pfVar6[1] - fRam011d2c64;
        fStack_48 = pfVar6[2] - fRam011d2c68;
        fStack_44 = pfVar6[3] - fRam011d2c6c;
        local_40 = *pfVar6 + _DAT_011d2c60;
        fStack_3c = pfVar6[1] + fRam011d2c64;
        fStack_38 = pfVar6[2] + fRam011d2c68;
        fStack_34 = pfVar6[3] + fRam011d2c6c;
        FUN_0068bdf0(&local_30,(undefined1 (*) [16])&local_30,(undefined1 (*) [16])&local_50);
        if (local_6c != 0) {
          iVar5 = 0;
          do {
            pfVar6 = (float *)(*(int *)((int)this + 0x288) + iVar5);
            *pfVar6 = local_30;
            pfVar6[1] = fStack_2c;
            pfVar6[2] = fStack_28;
            pfVar6[3] = fStack_24;
            iVar5 = iVar5 + 0x40;
            local_6c = local_6c - 1;
            pfVar6[4] = local_20;
            pfVar6[5] = fStack_1c;
            pfVar6[6] = fStack_18;
            pfVar6[7] = fStack_14;
          } while (local_6c != 0);
        }
        goto LAB_006f5ffc;
      }
    }
  }
  else if (((*(byte *)((int)this + 0x29e) & 2) == 0) && (uVar9 = 0, local_6c != 0)) {
    do {
      bVar3 = FUN_0068f4f0(*(int *)(*(int *)(param_1 + 0x40) + uVar9 * 4));
      in_EAX = CONCAT31(extraout_var,bVar3);
      if (bVar3) goto LAB_006f5dd6;
      uVar9 = uVar9 + 1;
    } while (uVar9 < local_6c);
  }
  return in_EAX & 0xffffff00;
}

