/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECX childTransform, three stack words explicitBoneBYTE, point, parentObject; RET0C void. Creates9375C04F body childGUID/parentGUID, mode, resolved boneINDEX and offset vectors. Point virtual+8(3) exposes containment flags40000000 and00800000. Explicit bone selects1/3; ordinary point virtual+10 true and no height-adjust selects2/3; else4 copies authored matrix and optional height callback. The predicate is NOT a Sim test: selected point vtables all use799BD0 testing point+10!=0. 80D610 uses ECXpoint plus stackparent and returns575C80 model index orFFFFFFFF, not original hash. C omitted ECX and false uninitialized flag aliases; actual booleans start0. Position helper fourth lane overwritten with1; rotation XYZ fed to later Euler consumer. Command enqueue693380 is not completion. */

void __thiscall FUN_00958b10(void *this,char param_1,int *param_2,void *param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  uint *puVar8;
  void *this_00;
  undefined4 *puVar9;
  undefined4 unaff_EBX;
  undefined2 uVar10;
  char cVar11;
  uint uStack_f4;
  uint uStack_f0;
  uint uStack_ec;
  float fStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  byte abStack_a4 [4];
  undefined4 *local_a0;
  undefined **local_9c;
  undefined4 local_98;
  undefined4 local_94;
  int local_90 [15];
  float afStack_54 [20];
  
  uVar10 = (undefined2)((uint)unaff_EBX >> 0x10);
  local_98 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_94 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_a0 = (undefined4 *)0x9375c04f;
  local_9c = &PTR_PTR_0117c8ac;
  piVar5 = FUN_00943d40(local_90);
  iVar1 = *piVar5;
  *(undefined4 *)(iVar1 + 8) = *(undefined4 *)((int)param_3 + 8);
  *(undefined4 *)(iVar1 + 0xc) = *(undefined4 *)((int)param_3 + 0xc);
  uStack_f4 = (uint)(ushort)uStack_f4;
  iVar6 = (**(code **)(*param_2 + 8))(3);
  if (iVar6 != 0) {
    if ((*(uint *)(iVar6 + 0x18) & 0x40000000) != 0) {
      unaff_EBX = CONCAT13((char)((uint)unaff_EBX >> 0x18),0x10000);
    }
    uVar10 = (undefined2)((uint)unaff_EBX >> 0x10);
    if ((*(uint *)(iVar6 + 0x18) & 0x800000) != 0) {
      uVar10 = (undefined2)(CONCAT13(1,(int3)unaff_EBX) >> 0x10);
    }
  }
  if (param_1 != '\0') {
    if ((char)uVar10 == '\0') {
      *(undefined4 *)(iVar1 + 0x10) = 1;
      uVar7 = FUN_0080d610(param_3);
      *(undefined4 *)(iVar1 + 0x14) = uVar7;
    }
    else {
      fStack_e8 = 1.0;
      *(undefined4 *)(iVar1 + 0x10) = 3;
      uStack_ec = 0;
      uStack_f0 = 0;
      uStack_f4 = 0;
      *(undefined4 *)(iVar1 + 0x20) = 0;
      *(undefined4 *)(iVar1 + 0x24) = 0;
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *(float *)(iVar1 + 0x2c) = 1.0;
      *(undefined4 *)(iVar1 + 0x30) = 0;
      *(undefined4 *)(iVar1 + 0x34) = 0;
      *(undefined4 *)(iVar1 + 0x38) = 0;
      *(float *)(iVar1 + 0x3c) = 1.0;
      uVar7 = FUN_0080d610(param_3);
      *(undefined4 *)(iVar1 + 0x14) = uVar7;
    }
    goto LAB_00958d13;
  }
  cVar11 = (char)((ushort)uVar10 >> 8);
  if (cVar11 == '\0') {
    cVar4 = (**(code **)(*param_2 + 0x10))();
    if (cVar4 == '\0') goto LAB_00958c42;
    *(uint *)(iVar1 + 0x10) = ((char)uVar10 != '\0') + 2;
    uVar7 = FUN_0080d610(param_3);
    *(undefined4 *)(iVar1 + 0x14) = uVar7;
    puVar8 = (uint *)FUN_0080d650(param_2,&uStack_f4);
    uStack_f4 = *puVar8;
    uStack_f0 = puVar8[1];
    uStack_ec = puVar8[2];
  }
  else {
LAB_00958c42:
    *(undefined4 *)(iVar1 + 0x10) = 4;
    puVar9 = (undefined4 *)(**(code **)(*param_2 + 0x18))();
    uStack_e4 = *puVar9;
    uStack_e0 = puVar9[1];
    uStack_dc = puVar9[2];
    uStack_d8 = puVar9[3];
    uStack_d4 = puVar9[4];
    uStack_d0 = puVar9[5];
    uStack_cc = puVar9[6];
    uStack_c8 = puVar9[7];
    uStack_c4 = puVar9[8];
    uStack_c0 = puVar9[9];
    uStack_bc = puVar9[10];
    uStack_b8 = puVar9[0xb];
    uStack_b4 = puVar9[0xc];
    uStack_b0 = puVar9[0xd];
    uStack_ac = puVar9[0xe];
    uStack_a8 = puVar9[0xf];
    if (cVar11 != '\0') {
      this_00 = Object_GetComponentByMask(param_3,DAT_011ea158);
      TransformComponent_GetWorldMatrix(this_00,afStack_54);
      (**(code **)(*param_2 + 0x20))(afStack_54,&uStack_e4,0);
    }
    *(undefined4 *)(iVar1 + 0x40) = uStack_e4;
    *(undefined4 *)(iVar1 + 0x44) = uStack_e0;
    *(undefined4 *)(iVar1 + 0x48) = uStack_dc;
    *(undefined4 *)(iVar1 + 0x4c) = uStack_d8;
    *(undefined4 *)(iVar1 + 0x50) = uStack_d4;
    *(undefined4 *)(iVar1 + 0x54) = uStack_d0;
    *(undefined4 *)(iVar1 + 0x58) = uStack_cc;
    *(undefined4 *)(iVar1 + 0x5c) = uStack_c8;
    *(undefined4 *)(iVar1 + 0x60) = uStack_c4;
    *(undefined4 *)(iVar1 + 100) = uStack_c0;
    *(undefined4 *)(iVar1 + 0x68) = uStack_bc;
    *(undefined4 *)(iVar1 + 0x6c) = uStack_b8;
    *(undefined4 *)(iVar1 + 0x70) = uStack_b4;
    *(undefined4 *)(iVar1 + 0x74) = uStack_b0;
    *(undefined4 *)(iVar1 + 0x78) = uStack_ac;
    *(undefined4 *)(iVar1 + 0x7c) = uStack_a8;
    puVar8 = (uint *)FUN_0080d650(param_2,&uStack_f4);
    uStack_f4 = *puVar8;
    uStack_f0 = puVar8[1];
    uStack_ec = puVar8[2];
  }
  fStack_e8 = 1.0;
  *(uint *)(iVar1 + 0x20) = uStack_f4;
  *(uint *)(iVar1 + 0x24) = uStack_f0;
  *(uint *)(iVar1 + 0x28) = uStack_ec;
  *(float *)(iVar1 + 0x2c) = 1.0;
  puVar9 = (undefined4 *)FUN_0080d6b0(param_2,&uStack_f4);
  uVar7 = puVar9[1];
  uVar2 = puVar9[2];
  uVar3 = puVar9[3];
  *(undefined4 *)(iVar1 + 0x30) = *puVar9;
  *(undefined4 *)(iVar1 + 0x34) = uVar7;
  *(undefined4 *)(iVar1 + 0x38) = uVar2;
  *(undefined4 *)(iVar1 + 0x3c) = uVar3;
LAB_00958d13:
  RenderCommand_EnqueueIfDispatcherExists(abStack_a4);
  if (local_a0 != (undefined4 *)0x0) {
    (**(code **)*local_a0)(&local_94);
  }
  return;
}
