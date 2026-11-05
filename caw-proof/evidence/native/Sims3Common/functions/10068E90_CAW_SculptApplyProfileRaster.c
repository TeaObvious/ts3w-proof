/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Profiled brush raster dispatches the selected action at
   samples using original image/profile and request state. Scalar stack labels and unaff registers
   are decompiler artifacts; it calls the quantized height actions rather than retaining arbitrary
   float edits. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_SculptApplyProfileRaster
          (void *this,int param_1,float param_2,float param_3,undefined *param_4,int param_5,
          int *param_6)

{
  char cVar1;
  byte *pbVar2;
  float unaff_EBX;
  float fVar3;
  int iVar4;
  bool bVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  void *pvVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  int unaff_retaddr;
  int iVar15;
  float local_1078;
  float local_1074;
  longlong local_1070;
  float fStack_1068;
  float local_1064;
  int iStack_1060;
  float local_105c;
  float local_1058;
  void *local_1050;
  float local_104c;
  float local_1048;
  float local_1044;
  float local_1040;
  float local_103c;
  float local_1038;
  int local_1034;
  float fStack_1030;
  float fStack_102c;
  float fStack_1028;
  float fStack_1024;
  float fStack_1020;
  float fStack_101c;
  float fStack_1018;
  float fStack_1014;
  float fStack_1010;
  float fStack_100c;
  float fStack_1008;
  int aiStack_1004 [512];
  int aiStack_804 [512];
  undefined4 uStack_4;
  
  uStack_4 = 0x10068e9a;
  iVar15 = param_6[6];
  fVar3 = *(float *)(iVar15 + 0x18);
  local_105c = *(float *)(iVar15 + 0x1c);
  fVar8 = (float)(int)fVar3;
  if ((int)fVar3 < 0) {
    fVar8 = fVar8 + _DAT_10aae190;
  }
  local_103c = fVar8 * _DAT_10b310ec;
  fVar7 = (float)(int)local_105c;
  if ((int)local_105c < 0) {
    fVar7 = fVar7 + _DAT_10aae190;
  }
  local_1038 = fVar7 * _DAT_10b310ec;
  fVar6 = (float10)fcos((float10)(float)param_4);
  local_104c = *(float *)((int)this + 0xc) / (param_3 / fVar8);
  local_1064 = (float)param_1 * *(float *)((int)this + 0xc);
  local_1078 = (float)(int)param_2 * *(float *)((int)this + 0xc);
  fVar7 = fVar7 * (param_3 / fVar8);
  local_1074 = (float)fVar6;
  local_1044 = (float)fVar6;
  fVar6 = (float10)fsin((float10)(float)param_4);
  local_1070 = CONCAT44(local_1070._4_4_,(float)fVar6);
  local_1058 = (float)fVar6;
  local_1050 = this;
  local_1048 = fVar3;
  local_1040 = local_105c;
  (**(code **)(**(int **)(iVar15 + 0x14) + 0x10))(&local_1034);
  fVar14 = unaff_EBX * DAT_10aae2c0;
  fVar8 = param_2 * DAT_10aae2c0;
  fVar9 = fVar8 * local_1074;
  fVar11 = local_1078 * fVar14;
  fStack_1020 = fVar9 + fVar11 + fVar7;
  fVar12 = local_1074 * fVar14;
  fStack_1024 = (fVar8 * local_1078 - fVar12) + fStack_1068;
  fVar13 = local_1078 * (DAT_10aae188 - fVar14);
  fStack_1018 = fVar13 + fVar9 + fVar7;
  fVar14 = local_1074 * (DAT_10aae188 - fVar14);
  fStack_101c = (fVar8 * local_1078 - fVar14) + fStack_1068;
  local_1074 = local_1074 * (DAT_10aae188 - fVar8);
  local_1058 = local_1038;
  local_1078 = local_1078 * (DAT_10aae188 - fVar8);
  fStack_1014 = (local_1078 - fVar14) + fStack_1068;
  fStack_1010 = local_1074 + fVar13 + fVar7;
  fStack_100c = (local_1078 - fVar12) + fStack_1068;
  fStack_1008 = local_1074 + fVar11 + fVar7;
  fVar8 = DAT_10aae188;
  local_1078 = fVar9;
  local_1074 = fVar12;
  FUN_100688f0(this,(int)&fStack_1024,(int)aiStack_1004,(int)aiStack_804,(int *)&stack0xffffef80,
               (int *)&local_1078);
  fStack_1030 = local_1048 * (float)local_1050;
  param_6[3] = -0x80000000;
  param_6[2] = -0x80000000;
  fStack_1028 = fVar8 - local_105c * (float)local_1050;
  param_6[1] = 0x7fffffff;
  *param_6 = 0x7fffffff;
  if ((int)fVar11 <= (int)local_1078) {
    fStack_1068 = (float)((int)fVar11 - (int)param_2);
    iVar15 = 0;
    pvVar10 = local_1050;
    fVar8 = local_1048;
    fVar7 = local_105c;
    do {
      iVar4 = *(int *)((int)aiStack_1004 + iVar15);
      iStack_1060 = *(int *)((int)aiStack_804 + iVar15);
      fVar9 = (float)(iVar4 - unaff_retaddr) * (float)pvVar10;
      local_1074 = ((float)(int)fStack_1068 * (float)pvVar10 * fVar8 - fVar9 * fVar7) + local_103c;
      local_1064 = (float)(int)fStack_1068 * (float)pvVar10 * fVar7 + fVar9 * fVar8 + local_1040;
      if (iVar4 <= iStack_1060) {
        do {
          local_1070._0_4_ = (float)(longlong)ROUND(local_1064);
          fVar8 = (float)local_1070;
          bVar5 = (uint)(float)local_1070 < (int)fVar3 - 1U;
          local_1070 = (longlong)ROUND(local_1074);
          if ((bVar5) && ((uint)(float)local_1070 < (uint)((int)local_1044 + -1))) {
            fVar3 = (float)(int)fVar8;
            if ((int)fVar8 < 0) {
              fVar3 = fVar3 + _DAT_10aae190;
            }
            pbVar2 = (byte *)(local_1034 * (int)(float)local_1070 + (int)fVar8 + (int)local_1058);
            fVar7 = (float)pbVar2[local_1034];
            fStack_102c = ((float)pbVar2[1] - (float)*pbVar2) * (local_1064 - fVar3) +
                          (float)*pbVar2;
            fVar8 = (float)(int)(float)local_1070;
            if ((int)(float)local_1070 < 0) {
              fVar8 = fVar8 + _DAT_10aae190;
            }
            *(float *)(param_5 + 0x1c) =
                 fStack_102c +
                 ((fVar7 + ((float)(pbVar2 + local_1034)[1] - fVar7) * (local_1064 - fVar3)) -
                 fStack_102c) * (local_1074 - fVar8);
            cVar1 = (*(code *)param_4)(iVar4,fVar11,param_5);
            fVar3 = local_104c;
            if (cVar1 != '\0') {
              if (iVar4 < *param_6) {
                *param_6 = iVar4;
              }
              if (param_6[2] < iVar4) {
                param_6[2] = iVar4;
              }
              if ((int)fVar11 < param_6[1]) {
                param_6[1] = (int)fVar11;
              }
              if (param_6[3] < (int)fVar11) {
                param_6[3] = (int)fVar11;
              }
            }
          }
          else if (((uint)fVar8 < (uint)fVar3) && ((uint)(float)local_1070 < (uint)local_1044)) {
            *(float *)(param_5 + 0x1c) =
                 (float)*(byte *)(local_1034 * (int)(float)local_1070 + (int)fVar8 + (int)local_1058
                                 );
            cVar1 = (*(code *)param_4)(iVar4,fVar11,param_5);
            if (cVar1 != '\0') {
              if (iVar4 < *param_6) {
                *param_6 = iVar4;
              }
              if (param_6[2] < iVar4) {
                param_6[2] = iVar4;
              }
              if ((int)fVar11 < param_6[1]) {
                param_6[1] = (int)fVar11;
              }
              if (param_6[3] < (int)fVar11) {
                param_6[3] = (int)fVar11;
              }
            }
          }
          local_1064 = local_1064 + fStack_1030;
          local_1074 = local_1074 + fStack_1028;
          iVar4 = iVar4 + 1;
          pvVar10 = local_1050;
          fVar8 = local_1048;
          fVar7 = local_105c;
        } while (iVar4 <= iStack_1060);
      }
      fStack_1068 = (float)((int)fStack_1068 + 1);
      fVar11 = (float)((int)fVar11 + 1);
      iVar15 = iVar15 + 4;
    } while ((int)fVar11 <= (int)local_1078);
  }
  return;
}

