/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 domain-owner static comparison. ECXSpeedTreeData; unsignedindex/output two words,
   RET8, AL result. Bounds/non-nullguard; resizesdestinationto1, copies fullprimitive, copies
   itsworldbounds then transforms byinverse own yawmatrix. Does not choose clone variationID; caller
   component assignment is separate. */

undefined4 __thiscall TreeData_CopySelectedPrimitive(void *this,uint param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  float *pfVar5;
  undefined4 uVar6;
  undefined1 (*extraout_EDX) [16];
  int *this_00;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0 [4];
  undefined4 local_90 [16];
  undefined1 local_50 [76];
  
  uVar2 = (*(int *)((int)this + 0xc) - *(int *)((int)this + 8)) / 0x50;
  if ((param_1 < uVar2) && (param_2 != 0)) {
    this_00 = (int *)(param_2 + 8);
    FUN_007b7fb0(this_00,1);
    FUN_007b7410((void *)*this_00,(undefined4 *)(param_1 * 0x50 + *(int *)((int)this + 8)));
    TreePrimitive_WriteYawMatrix((void *)*this_00,local_90);
    pfVar5 = (float *)Matrix4_InvertWithReplicatedDeterminant
                                ((undefined1 (*) [16])local_50,extraout_EDX,local_a0);
    local_e0 = *pfVar5;
    fStack_dc = pfVar5[1];
    fStack_d8 = pfVar5[2];
    fStack_d4 = pfVar5[3];
    iVar1 = *this_00;
    local_d0 = pfVar5[4];
    fStack_cc = pfVar5[5];
    fStack_c8 = pfVar5[6];
    fStack_c4 = pfVar5[7];
    local_c0 = pfVar5[8];
    fStack_bc = pfVar5[9];
    fStack_b8 = pfVar5[10];
    fStack_b4 = pfVar5[0xb];
    local_b0 = pfVar5[0xc];
    fStack_ac = pfVar5[0xd];
    fStack_a8 = pfVar5[0xe];
    fStack_a4 = pfVar5[0xf];
    uVar6 = *(undefined4 *)(iVar1 + 0x24);
    uVar3 = *(undefined4 *)(iVar1 + 0x28);
    uVar4 = *(undefined4 *)(iVar1 + 0x2c);
    *(undefined4 *)(param_2 + 0x20) = *(undefined4 *)(iVar1 + 0x20);
    *(undefined4 *)(param_2 + 0x24) = uVar6;
    *(undefined4 *)(param_2 + 0x28) = uVar3;
    *(undefined4 *)(param_2 + 0x2c) = uVar4;
    uVar6 = *(undefined4 *)(iVar1 + 0x34);
    uVar3 = *(undefined4 *)(iVar1 + 0x38);
    uVar4 = *(undefined4 *)(iVar1 + 0x3c);
    *(undefined4 *)(param_2 + 0x30) = *(undefined4 *)(iVar1 + 0x30);
    *(undefined4 *)(param_2 + 0x34) = uVar6;
    *(undefined4 *)(param_2 + 0x38) = uVar3;
    *(undefined4 *)(param_2 + 0x3c) = uVar4;
    uVar6 = Bounds_TransformHomogeneousCorners((undefined4 *)(param_2 + 0x20),&local_e0);
    return CONCAT31((int3)((uint)uVar6 >> 8),1);
  }
  return uVar2 & 0xffffff00;
}

