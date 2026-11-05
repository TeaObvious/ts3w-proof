/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 billboard orientation contract. Reference-counted species initialization.
   Configures SDK, computes geometry, restores current camera, exports geometry with mask0F and
   calls717280. This closes the actual caller path from the SDK billboard descriptor into the
   renderer atlas constants; broader construction/failure paths remain as listed. */

undefined4 __fastcall Flora_InitializeSpeciesGeometry(int *param_1)

{
  int iVar1;
  int *piVar2;
  bool bVar3;
  undefined *puVar4;
  uint uVar5;
  int *piVar6;
  undefined4 uVar7;
  uint extraout_EAX;
  undefined4 *puVar8;
  undefined4 extraout_EAX_00;
  int *piVar9;
  int extraout_EDX;
  undefined *puVar10;
  float10 fVar11;
  int *local_1b4;
  int *local_1b0;
  int *local_1ac;
  uint local_1a8;
  uint local_1a4 [8];
  undefined4 local_184 [4];
  int local_174;
  int local_11c;
  int local_8;
  int local_4;
  
  iVar1 = param_1[200];
  param_1[200] = iVar1 + 1;
  if (iVar1 != 0) {
    return CONCAT31((int3)((uint)iVar1 >> 8),1);
  }
  piVar2 = *(int **)(param_1[0xb8] + 0x34);
  if (piVar2 == (int *)0x0) {
    param_1[200] = 0;
    FUN_00716080(param_1);
    local_1b4 = param_1;
    uVar5 = FUN_00652840(PTR_DAT_0115c488 + 0x1c8,(int *)&local_1b4);
    return uVar5 & 0xffffff00;
  }
  FUN_007bb560(piVar2,0);
  FUN_007bb5c0(piVar2,0);
  FUN_007bb530(piVar2,0);
  FUN_007bb1b0(piVar2,0);
  FUN_007bb220(piVar2,0);
  FUN_007bb1f0(piVar2,0);
  FUN_007b8710(piVar2,0,0,0);
  SpeedTree_SetCameraAndSdkBillboardFades((float *)&DAT_00ffcfd8,(float *)&DAT_00ffcfe4);
  SpeedTree_ComputeGeometryAndBillboardBounds(piVar2,extraout_EDX,(float *)0x0,1,'\x01');
  bVar3 = *(float *)(param_1[0xb8] + 0x178) == DAT_010f4ccc;
  param_1[0xca] = (int)*(float *)(param_1[0xb8] + 0x178);
  if (bVar3) {
    fVar11 = FUN_007b8780((int)piVar2);
    uVar5 = (int)(float)((float10)(float)_DAT_0104487c - fVar11 * (float10)DAT_00ffceb0) >> 0x1f;
    local_1b0 = (int *)(float)(fVar11 * (float10)DAT_00ffceb0);
    local_1b4 = _DAT_0104487c;
    param_1[0xca] = ~uVar5 & (uint)_DAT_0104487c | (uint)local_1b0 & uVar5;
  }
  SpeedTree_SetCameraAndSdkBillboardFades((float *)&DAT_011d376c,(float *)&DAT_011d3760);
  FUN_007b84b0(local_1a4);
  SptMaps_ExportBorrowedStringViews(piVar2,local_1a4);
  FUN_007b9470(local_184);
  SpeedTree_ExportGeometryByMask(piVar2,local_184,0xf);
  local_1ac = (int *)(local_11c + local_174);
  local_1b4 = (int *)0x0;
  local_1b0 = (int *)0x0;
  piVar9 = (int *)0x0;
  if (0 < local_8) {
    local_1a8 = *(uint *)(local_4 + 8);
    uVar5 = 0;
    if (local_1a8 != 0) {
      do {
        piVar9 = *(int **)(*(int *)(local_4 + 0x44) + 0x20 +
                          (uint)*(byte *)(*(int *)(local_4 + 0x18) + uVar5) * 0x24);
        if (piVar9 == (int *)0x0) {
          local_1b4 = local_1b4 + 1;
        }
        else {
          local_1b0 = (int *)((int)local_1b0 + *piVar9);
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < local_1a8);
      piVar9 = local_1b4;
    }
  }
  local_1b4 = (int *)((int)local_1b0 * 0x34);
  piVar6 = (int *)((int)local_1ac * 0x28);
  if ((int *)((int)local_1ac * 0x28) <= (int *)((int)piVar9 * 0x28)) {
    piVar6 = (int *)((int)piVar9 * 0x28);
  }
  if (local_1b4 < piVar6) {
    local_1b4 = piVar6;
  }
  piVar6 = local_1ac;
  if (local_1ac <= piVar9) {
    piVar6 = piVar9;
  }
  piVar9 = local_1b0;
  if (local_1b0 < piVar6) {
    piVar9 = piVar6;
  }
  if ((uint)((int)local_1b4 * 9) < 8000000) {
    param_1[0xbd] = 9;
  }
  else {
    param_1[0xbd] = (int)(8000000 / ZEXT48(local_1b4));
  }
  if (0x7ffe < (uint)(param_1[0xbd] * (int)piVar9)) {
    param_1[0xbd] = (int)(0x7fff / ZEXT48(piVar9));
  }
  uVar7 = Flora_PrepareSpeciesGeometryAndBillboardAtlas(param_1,(int)local_184);
  if ((char)uVar7 == '\0') {
    piVar2 = param_1 + 200;
    *piVar2 = *piVar2 + -1;
    if (*piVar2 == 0) {
      FUN_00716080(param_1);
      local_1ac = param_1;
      FUN_00652840(PTR_DAT_0115c488 + 0x1c8,(int *)&local_1ac);
    }
    FUN_007b95a0((int)local_184);
    SptMaps_DestroyStringViews(local_1a4);
    return extraout_EAX & 0xffffff00;
  }
  FUN_007bb180(piVar2);
  FUN_007ba480((int)piVar2);
  FUN_007ba4b0((int)piVar2);
  FUN_007b8800((int)piVar2);
  puVar4 = PTR_DAT_0115c488;
  puVar10 = PTR_DAT_0115c488 + 0x1c8;
  puVar8 = (undefined4 *)FUN_004e4500(0xc,*(undefined4 *)(PTR_DAT_0115c488 + 0x1d0),0);
  if (puVar8 + 2 != (undefined4 *)0x0) {
    puVar8[2] = param_1;
  }
  *puVar8 = puVar10;
  puVar8[1] = *(undefined4 *)(puVar4 + 0x1cc);
  **(undefined4 **)(puVar4 + 0x1cc) = puVar8;
  *(undefined4 **)(puVar4 + 0x1cc) = puVar8;
  FUN_007b95a0((int)local_184);
  SptMaps_DestroyStringViews(local_1a4);
  return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
}

