/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC167_STATIC_ROTATE_0050cf40. Physical ECX service plus Window/two lowbyte controls/RET0C.
   Dirtyflag4 resets Window+b0 via511F20, sends message14 with payload+18=&Window+b0 through50C110,
   then builds composed forward+150/inverse+1A0. Exact forward helper sequence is
   T(-halfsize)*localEffects*T(rectCenter)*parent, with optional retained parent surface reset.
   Updates shade/dirty records and visits actual child list. Reset/inverse/resource helpers remain
   explicit providers; physical stack message stores are authoritative over split C locals. */

void __thiscall
UiWindowService_UpdateSubtreeTransforms(void *this,int param_1,char param_2,char param_3)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  bool bVar7;
  uint uVar8;
  undefined4 *puVar9;
  uint uVar10;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
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
  undefined4 uStack_28;
  float fStack_24;
  undefined4 *local_18;
  
  if ((*(byte *)(param_1 + 0x1f8) & 4) != 0) {
    puVar2 = (undefined4 *)(param_1 + 0xb0);
    *(byte *)(param_1 + 0x1f8) = *(byte *)(param_1 + 0x1f8) & 0xfb;
    UiTransform_SetIdentity(puVar2);
    uStack_28 = 0x14;
    local_18 = puVar2;
    UiWindowService_DispatchEvent(this,(void *)0x0,(void *)(param_1 + 4),&local_30,0,0);
    uVar4 = *(undefined4 *)(param_1 + 0xb4);
    uVar5 = *(undefined4 *)(param_1 + 0xb8);
    uVar6 = *(undefined4 *)(param_1 + 0xbc);
    *(undefined4 *)*(undefined1 (*) [16])(param_1 + 0x100) = *puVar2;
    *(undefined4 *)(param_1 + 0x104) = uVar4;
    *(undefined4 *)(param_1 + 0x108) = uVar5;
    *(undefined4 *)(param_1 + 0x10c) = uVar6;
    *(undefined4 *)(param_1 + 0x110) = *(undefined4 *)(param_1 + 0xc0);
    *(undefined4 *)(param_1 + 0x114) = *(undefined4 *)(param_1 + 0xc4);
    *(undefined4 *)(param_1 + 0x118) = *(undefined4 *)(param_1 + 200);
    *(undefined4 *)(param_1 + 0x11c) = *(undefined4 *)(param_1 + 0xcc);
    *(undefined4 *)(param_1 + 0x120) = *(undefined4 *)(param_1 + 0xd0);
    *(undefined4 *)(param_1 + 0x124) = *(undefined4 *)(param_1 + 0xd4);
    *(undefined4 *)(param_1 + 0x128) = *(undefined4 *)(param_1 + 0xd8);
    *(undefined4 *)(param_1 + 300) = *(undefined4 *)(param_1 + 0xdc);
    *(undefined4 *)(param_1 + 0x130) = *(undefined4 *)(param_1 + 0xe0);
    *(undefined4 *)(param_1 + 0x134) = *(undefined4 *)(param_1 + 0xe4);
    *(undefined4 *)(param_1 + 0x138) = *(undefined4 *)(param_1 + 0xe8);
    *(undefined4 *)(param_1 + 0x13c) = *(undefined4 *)(param_1 + 0xec);
    *(undefined4 *)(param_1 + 0x140) = *(undefined4 *)(param_1 + 0xf0);
    FUN_00513370((undefined1 (*) [16])(param_1 + 0x100),*(undefined4 *)(param_1 + 0xf0));
    param_2 = '\x01';
  }
  if ((*(byte *)(param_1 + 0x1f8) & 8) != 0) {
    *(byte *)(param_1 + 0x1f8) = *(byte *)(param_1 + 0x1f8) & 0xf7;
    param_3 = '\x01';
  }
  if (param_2 != '\0') {
    iVar3 = *(int *)(param_1 + 0x2c);
    fStack_68 = 0.0;
    local_60 = (*(float *)(param_1 + 0x48) + *(float *)(param_1 + 0x40)) * _DAT_00f9b5b4;
    fStack_5c = (*(float *)(param_1 + 0x4c) + *(float *)(param_1 + 0x44)) * _DAT_00f9b5b4;
    fStack_58 = 0.0;
    puVar2 = (undefined4 *)(param_1 + 0x150);
    fStack_54 = local_60;
    if (iVar3 == 0) {
      local_70 = FLOAT_00f998f8;
      fStack_6c = FLOAT_00f998f8;
      fStack_68 = FLOAT_00f998f8;
      fStack_64 = FLOAT_00f998f8;
      local_50 = FLOAT_00f998f8;
      fStack_4c = FLOAT_00f998f8;
      fStack_48 = FLOAT_00f998f8;
      fStack_44 = FLOAT_00f998f8;
      UiTransform_SetTranslationScale(puVar2,&local_60,&local_50);
      local_50 = 0.0;
      fStack_4c = 0.0;
      fStack_48 = 0.0;
      fStack_44 = 0.0;
      local_40 = 0.0 - local_60;
      fStack_3c = 0.0 - fStack_5c;
      fStack_38 = 0.0 - fStack_58;
      fStack_34 = 0.0 - fStack_54;
      UiTransform_SetTranslationScale((void *)(param_1 + 0x1a0),&local_40,&local_70);
    }
    else {
      local_70 = local_60;
      fStack_6c = fStack_5c;
      fStack_64 = local_60;
      if (*(int *)(iVar3 + 0x20c) == 0) {
        FUN_0050b440(puVar2,(undefined4 *)(iVar3 + 0x150));
      }
      else {
        UiTransform_SetIdentity(puVar2);
      }
      UiTransform_PrependTranslation((void *)(param_1 + 0x150),&local_60);
      uVar4 = *(undefined4 *)(iVar3 + 0x1a4);
      uVar5 = *(undefined4 *)(iVar3 + 0x1a8);
      uVar6 = *(undefined4 *)(iVar3 + 0x1ac);
      *(undefined4 *)(param_1 + 0x1a0) = *(undefined4 *)(iVar3 + 0x1a0);
      *(undefined4 *)(param_1 + 0x1a4) = uVar4;
      *(undefined4 *)(param_1 + 0x1a8) = uVar5;
      *(undefined4 *)(param_1 + 0x1ac) = uVar6;
      uVar4 = *(undefined4 *)(iVar3 + 0x1b4);
      uVar5 = *(undefined4 *)(iVar3 + 0x1b8);
      uVar6 = *(undefined4 *)(iVar3 + 0x1bc);
      *(undefined4 *)(param_1 + 0x1b0) = *(undefined4 *)(iVar3 + 0x1b0);
      *(undefined4 *)(param_1 + 0x1b4) = uVar4;
      *(undefined4 *)(param_1 + 0x1b8) = uVar5;
      *(undefined4 *)(param_1 + 0x1bc) = uVar6;
      uVar4 = *(undefined4 *)(iVar3 + 0x1c4);
      uVar5 = *(undefined4 *)(iVar3 + 0x1c8);
      uVar6 = *(undefined4 *)(iVar3 + 0x1cc);
      *(undefined4 *)(param_1 + 0x1c0) = *(undefined4 *)(iVar3 + 0x1c0);
      *(undefined4 *)(param_1 + 0x1c4) = uVar4;
      *(undefined4 *)(param_1 + 0x1c8) = uVar5;
      *(undefined4 *)(param_1 + 0x1cc) = uVar6;
      uVar4 = *(undefined4 *)(iVar3 + 0x1d4);
      uVar5 = *(undefined4 *)(iVar3 + 0x1d8);
      uVar6 = *(undefined4 *)(iVar3 + 0x1dc);
      *(undefined4 *)(param_1 + 0x1d0) = *(undefined4 *)(iVar3 + 0x1d0);
      *(undefined4 *)(param_1 + 0x1d4) = uVar4;
      *(undefined4 *)(param_1 + 0x1d8) = uVar5;
      *(undefined4 *)(param_1 + 0x1dc) = uVar6;
      local_50 = 0.0;
      fStack_4c = 0.0;
      fStack_48 = 0.0;
      fStack_44 = 0.0;
      local_70 = 0.0 - local_60;
      fStack_6c = 0.0 - fStack_5c;
      fStack_68 = 0.0 - fStack_58;
      fStack_64 = 0.0 - fStack_54;
      *(undefined4 *)(param_1 + 0x1e0) = *(undefined4 *)(iVar3 + 0x1e0);
      FUN_00512ae0((undefined4 *)(param_1 + 0x1a0),&local_70);
    }
    UiTransform_PrependTransform((void *)(param_1 + 0x150),(float *)(param_1 + 0xb0));
    if (*(int *)(param_1 + 0x140) == 4) {
      *(undefined4 *)(param_1 + 0x1e0) = 4;
    }
    else {
      FUN_00512020((void *)(param_1 + 0x1a0),(float *)(param_1 + 0x100));
    }
    fStack_68 = 0.0;
    local_70 = (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) * _DAT_00f9b5b4;
    fStack_6c = (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) * _DAT_00f9b5b4;
    local_40 = local_50 - local_70;
    fStack_3c = fStack_4c - fStack_6c;
    fStack_38 = fStack_48 - 0.0;
    fStack_34 = fStack_44 - local_70;
    uStack_28 = 0;
    fStack_64 = local_70;
    local_30 = local_70;
    fStack_2c = fStack_6c;
    fStack_24 = local_70;
    UiTransform_PrependTranslation((void *)(param_1 + 0x150),&local_40);
    FUN_00512ae0((void *)(param_1 + 0x1a0),&local_30);
    if (((*(int *)(param_1 + 500) != 0) && (*(int *)(param_1 + 0x24) == 0)) &&
       (*(char *)((int)this + 0x30) == '\0')) {
      piVar1 = (int *)(param_1 + 0x20);
      *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)((int)this + 0x1c);
      *piVar1 = (int)this + 0x18;
      *(int **)((int)this + 0x1c) = piVar1;
      **(int **)(param_1 + 0x24) = (int)piVar1;
    }
  }
  if (param_3 == '\0') goto LAB_0050d2bb;
  *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1fc);
  if (*(int *)(param_1 + 0x2c) != 0) {
    uVar8 = (**(code **)(*(int *)(*(int *)(param_1 + 0x2c) + 4) + 0x28))();
    if ((uVar8 & 0x2000) == 0) {
      iVar3 = *(int *)(*(int *)(param_1 + 0x2c) + 0x2c);
      if (iVar3 == 0) {
        *(undefined4 *)(param_1 + 0x1f0) = *(undefined4 *)(param_1 + 0x1fc);
        goto LAB_0050d290;
      }
      uVar8 = *(uint *)(iVar3 + 0x1f0);
      uVar10 = *(uint *)(param_1 + 0x1fc);
    }
    else {
      uVar8 = *(uint *)(*(int *)(param_1 + 0x2c) + 0x1f0);
      uVar10 = *(uint *)(param_1 + 0x1fc);
    }
    uVar8 = FUN_00513970(uVar10,uVar8);
    *(uint *)(param_1 + 0x1f0) = uVar8;
  }
LAB_0050d290:
  if (((*(int *)(param_1 + 500) != 0) && (*(int *)(param_1 + 0x24) == 0)) &&
     (*(char *)((int)this + 0x30) == '\0')) {
    piVar1 = (int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)((int)this + 0x1c);
    *piVar1 = (int)this + 0x18;
    *(int **)((int)this + 0x1c) = piVar1;
    **(undefined4 **)(param_1 + 0x24) = piVar1;
  }
LAB_0050d2bb:
  if ((param_2 == '\0') && (param_3 == '\0')) {
    bVar7 = false;
  }
  else {
    bVar7 = true;
  }
  if ((*(byte *)(param_1 + 0x1f8) & 0x10) == 0) {
    if (!bVar7) {
      return;
    }
  }
  else {
    *(byte *)(param_1 + 0x1f8) = *(byte *)(param_1 + 0x1f8) & 0xef;
  }
  for (puVar2 = *(undefined4 **)(param_1 + 0x210); puVar2 != (undefined4 *)(param_1 + 0x210);
      puVar2 = (undefined4 *)*puVar2) {
    if (puVar2 == (undefined4 *)0x0) {
      puVar9 = (undefined4 *)0x0;
    }
    else {
      puVar9 = puVar2 + -2;
    }
    UiWindowService_UpdateSubtreeTransforms(this,(int)puVar9,param_2,param_3);
  }
  return;
}

