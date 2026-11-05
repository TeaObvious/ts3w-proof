/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ApplyLayerPaintBrush. Export
   ordinal(s): 2606. Entry VA: 0x10998060. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004E5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl WorldWrap_ApplyLayerPaintBrush(float param_1,float *param_2,uint param_3)

{
  float fVar1;
  float fVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  void *pvVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  uint uVar12;
  undefined1 uStack_31;
  void *pvStack_20;
  float fStack_1c;
  float fStack_18;
  undefined1 uStack_14;
  int iStack_10;
  float fStack_c;
  uint uStack_8;
  uint uStack_4;
  
  fVar1 = param_1;
  if (*(int *)((int)param_1 + 0x54) == 0) {
    return 0;
  }
  pvVar6 = (void *)FUN_106b6a50(*(int *)((int)param_1 + 0x54));
  if ((pvVar6 != (void *)0x0) && (iVar7 = FUN_10409fe0((int)fVar1), uVar5 = param_3, iVar7 != 0)) {
    fStack_1c = param_2[2];
    uVar11 = (uint)param_1 >> 8;
    param_1 = (float)((uint)param_1 & 0xffffff00);
    if (-2 < (int)fStack_1c) {
      if (fStack_1c == -NAN) {
        fStack_1c = 0.0;
        param_1 = (float)CONCAT31((int3)uVar11,1);
      }
      fVar1 = param_2[1];
      fVar2 = param_2[4];
      uVar11 = (int)fVar2 - 1U & ~(uint)fVar2;
      uStack_31 = 0;
      if (uVar11 == 0) {
        iVar10 = (int)fVar2 / 2;
      }
      else {
        iVar10 = (int)fVar2 / 2 + -1;
      }
      iVar10 = iVar10 + (int)*param_2;
      iVar8 = (int)fVar2 / 2;
      iVar3 = iVar8 + -1;
      if (uVar11 == 0) {
        iVar3 = iVar8;
      }
      uStack_14 = param_1._0_1_;
      fStack_c = param_2[7];
      uVar11 = (int)*param_2 - iVar8;
      pvStack_20 = pvVar6;
      if ((int)uVar11 <= iVar10) {
        uVar12 = (int)fVar1 - iVar8;
        uStack_31 = 1;
        uVar4 = uVar12;
        do {
          for (; (int)uVar4 <= iVar3 + (int)fVar1; uVar4 = uVar4 + 1) {
            param_1 = 0.0;
            uVar9 = FUN_102032b0(param_2,uVar11,uVar4,&param_1);
            if (((char)uVar9 != '\0') &&
               ((uVar9 = FUN_10068640(iVar7), (char)uVar9 == '\0' ||
                (uVar9 = FUN_10203440(pvVar6,uVar11,uVar4,&param_1), (char)uVar9 != '\0')))) {
              iStack_10 = (*(int *)((int)pvVar6 + 0x20) - *(int *)((int)pvVar6 + 0x1c) >> 2) + -1;
              fStack_18 = param_1;
              uStack_8 = uVar11;
              uStack_4 = uVar4;
              if ((uVar5 & 2) == 0) {
                FUN_10203570(&pvStack_20,uVar5);
              }
              else {
                FUN_10203710(&pvStack_20);
              }
            }
          }
          uVar11 = uVar11 + 1;
          uVar4 = uVar12;
        } while ((int)uVar11 <= iVar10);
      }
      FUN_101f0490((int)pvVar6);
      return uStack_31;
    }
  }
  return 0;
}

