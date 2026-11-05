/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Vtable pointer00FBB388; exact reachable decoded
   body288instructions/1015owned bytes, six padding bytes excluded. ECX text-service receiver, eight
   physical stack words/RET20. Optional UTF16 length -1 scans terminator; null style
   selects011CDD70. Wrap5, horizontal4 and vertical3 preserve incoming TextStyle fields; other
   values replace copied style fields before actual layout service. Native allocation, style
   copy/destruction, glyph layout and rendering remain in this full body, not equivalent to a
   managed offset-only helper. Inferred formals/aliases are not a recovered C++ declaration. */

void UiTextService_DrawStyledString
               (float *param_1,short *param_2,int param_3,undefined4 *param_4,int param_5,
               int param_6,int param_7,int param_8)

{
  short sVar1;
  bool bVar2;
  undefined4 *puVar3;
  short *psVar4;
  void *this;
  void *this_00;
  int iVar5;
  int iVar6;
  int *in_ECX;
  float10 fVar7;
  float fVar8;
  double dVar9;
  longlong lVar10;
  float fStack_288;
  float fStack_284;
  undefined4 auStack_278 [145];
  int iStack_34;
  int iStack_30;
  int iStack_28;
  int iStack_24;
  
  if (in_ECX[1] == 0) {
    puVar3 = FUN_00506830(DAT_011cd9b0);
    in_ECX[1] = (int)puVar3;
  }
  if (param_3 == -1) {
    psVar4 = param_2;
    do {
      sVar1 = *psVar4;
      psVar4 = psVar4 + 1;
    } while (sVar1 != 0);
    param_3 = (int)psVar4 - (int)(param_2 + 1) >> 1;
  }
  if (param_4 == (undefined4 *)0x0) {
    param_4 = (undefined4 *)&DAT_011cdd70;
  }
  this = (void *)(**(code **)(*(int *)in_ECX[2] + 0x90))();
  this_00 = (void *)FUN_004624f0((int)this);
  FUN_00463f60((int)this_00);
  FUN_00465f10(this,'\x01');
  if ((((param_5 != 5) || (param_6 != 4)) || (param_7 != 3)) || (param_8 != 0)) {
    FUN_0045f090(auStack_278,param_4);
    if (param_5 != 5) {
      iStack_28 = param_5;
    }
    if (param_6 != 4) {
      iStack_34 = param_6;
    }
    if (param_7 != 3) {
      iStack_30 = param_7;
    }
    if (param_8 != 0) {
      iStack_24 = param_8;
    }
    param_4 = auStack_278;
  }
  FUN_00462f90(this,param_4);
  iVar5 = FUN_004624d0((int)this);
  FUN_00464cd0(this,param_2,param_3);
  ClipPoseController_SetMirrorEnabled(this,*(int *)(iVar5 + 0x254) == 2);
  if (*(int *)(iVar5 + 0x250) != 0) {
    fStack_284 = param_1[1];
    if (*(int *)(iVar5 + 0x248) != 0) {
      fStack_288 = 0.0;
      bVar2 = true;
      FUN_004624a0(this,param_1[2] - *param_1,0,0);
      iVar6 = FUN_004624e0((int)this);
      while (iVar6 != 2) {
        FUN_00466ac0(this);
        fVar8 = *(float *)(iVar5 + 0x274);
        if ((fVar8 == 0.0) || (bVar2)) {
          fVar7 = FUN_00462f50((int)this_00);
          fVar8 = (float)fVar7;
        }
        fStack_288 = fVar8 + fStack_288;
        bVar2 = false;
        FUN_00463c10(this,'\0');
        iVar6 = FUN_004624e0((int)this);
      }
      if (*(int *)(iVar5 + 0x248) == 2) {
        fStack_284 = param_1[3] - fStack_288;
      }
      else if (*(int *)(iVar5 + 0x248) == 1) {
        dVar9 = floor((double)(((param_1[3] - param_1[1]) - fStack_288) * 0.5));
        fStack_284 = (float)dVar9 + fStack_284;
      }
      FUN_00465f10(this,'\0');
      FUN_00464cd0(this,param_2,param_3);
    }
    FUN_004624a0(this,param_1[2] - *param_1,*param_1,fStack_284);
    iVar5 = FUN_004624e0((int)this);
    while (iVar5 != 2) {
      FUN_00466ac0(this);
      (**(code **)(*in_ECX + 0x2c))();
      FUN_00463c10(this,'\x01');
      iVar5 = FUN_004624e0((int)this);
    }
    return;
  }
  FUN_004624a0(this,param_1[2] - *param_1,*param_1,param_1[1]);
  FUN_00466ac0(this);
  fVar7 = FUN_00462f50((int)this_00);
  if (*(int *)(iVar5 + 0x248) == 2) {
    FUN_00462970(this_00,0.0,(param_1[3] - param_1[1]) - (float)fVar7,0,
                 *(int *)((int)this_00 + 0x68) - *(int *)((int)this_00 + 100) >> 5);
    (**(code **)(*in_ECX + 0x2c))();
    return;
  }
  if (*(int *)(iVar5 + 0x248) == 1) {
    lVar10 = (ulonglong)(uint)(*(int *)((int)this_00 + 0x68) - *(int *)((int)this_00 + 100) >> 5) <<
             0x20;
    dVar9 = floor((double)((((float10)param_1[3] - (float10)param_1[1]) - fVar7) * (float10)0.5));
    FUN_00462970(this_00,0.0,(float)dVar9,(int)lVar10,(int)((ulonglong)lVar10 >> 0x20));
    (**(code **)(*in_ECX + 0x2c))();
    return;
  }
  (**(code **)(*in_ECX + 0x2c))();
  return;
}

