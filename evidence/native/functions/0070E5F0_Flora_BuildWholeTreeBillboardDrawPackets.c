/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX cluster, ALsuccess, RET. If byte537 permits, release
   previous packets, truncate instance-vector length to UInt16 count. Positive vertical image count
   uses declarationFFC5A4 (SHORT4 position,SHORT4 TEXCOORD0,UBYTE4 TEXCOORD1,FLOAT1 TEXCOORD2),
   stride24, four vertices/six indices per instance, writer70D4F0, packet+4CC/admission+4F4.
   Horizontal SPT gate7B8850 uses declarationFFC540 (SHORT4 position and TEXCOORD0/1/2,FLOAT1
   TEXCOORD3), stride36, writer70DF70, packet+508/admission+530. Both copy raw instance+78 as last
   writer argument. Common indices0,3,1,1,3,2; not two reversed card copies. Generate70D9A0
   constants after packet construction. Decompiled uVar14 high-word output pointer is an EDX
   liveness artifact across matrix helper, not a recovered UInt64 return ABI. */

uint __fastcall Flora_BuildWholeTreeBillboardDrawPackets(int param_1)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  undefined4 in_EAX;
  void *pvVar4;
  uint uVar5;
  undefined3 extraout_var;
  undefined4 *puVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  short *psVar10;
  undefined3 extraout_var_00;
  short sVar11;
  short sVar12;
  void *this;
  uint uVar13;
  undefined8 uVar14;
  float *pfVar15;
  undefined4 uVar16;
  uint uStack_58;
  undefined4 auStack_50 [19];
  
  if (*(char *)(param_1 + 0x537) == '\0') {
    pvVar4 = (void *)FUN_0061abf0();
    FUN_0070d1c0(param_1);
    uVar5 = *(int *)(param_1 + 0x214) - *(int *)(param_1 + 0x210) >> 7;
    uVar13 = uVar5 & 0xffff;
    uVar8 = *(uint *)(*(int *)(param_1 + 0x4b4) + 0x2b8);
    sVar12 = (short)uVar5;
    if ((0x20 < uVar8) || (0 < (int)uVar8)) {
      bVar2 = VertexFormatCache_GetOrCreate
                        (pvVar4,(NativeVertexElement8 *)&DAT_00ffc5a4,4,(void **)(param_1 + 0x4bc));
      uVar8 = CONCAT31(extraout_var,bVar2);
      if (!bVar2) goto LAB_0070e665;
      puVar6 = (undefined4 *)FUN_004e4520(0x20,4,0,"SpeedTree/VertexBuffer",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_0061aa60(puVar6);
      }
      *(int **)(param_1 + 0x4c0) = piVar7;
      (**(code **)(*piVar7 + 4))();
      uVar8 = FUN_0061a8a0(*(void **)(param_1 + 0x4c0),uVar13 * 0x60,0);
      if ((char)uVar8 == '\0') goto LAB_0070e665;
      iVar9 = FUN_0061a560(*(void **)(param_1 + 0x4c0),0,0,0);
      if (iVar9 != 0) {
        if (sVar12 != 0) {
          iVar9 = 0;
          uStack_58 = uVar13;
          do {
            uVar16 = *(undefined4 *)(*(int *)(param_1 + 0x210) + 0x78 + iVar9);
            iVar1 = *(int *)(param_1 + 0x4b4);
            this = (void *)(*(int *)(param_1 + 0x210) + iVar9);
            pfVar15 = (float *)((int)this + 0x48);
            uVar14 = TreePrimitive_WriteYawMatrix(this,auStack_50);
            Flora_WriteVerticalBillboardPacket
                      ((int)((ulonglong)uVar14 >> 0x20),(float *)(iVar1 + 0x2b0),(float *)uVar14,
                       pfVar15,uVar16);
            iVar9 = iVar9 + 0x80;
            uStack_58 = uStack_58 - 1;
          } while (uStack_58 != 0);
        }
        FUN_0061a5d0(*(int *)(param_1 + 0x4c0));
      }
      puVar6 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_006176a0(puVar6);
      }
      *(int **)(param_1 + 0x4c4) = piVar7;
      (**(code **)(*piVar7 + 4))();
      uVar8 = FUN_006175b0(*(void **)(param_1 + 0x4c4),uVar13 * 6,0,0);
      if ((char)uVar8 == '\0') goto LAB_0070e665;
      psVar10 = (short *)FUN_00617380(*(void **)(param_1 + 0x4c4),0,0,0);
      if (psVar10 != (short *)0x0) {
        if (sVar12 != 0) {
          sVar11 = 3;
          uVar8 = uVar13;
          do {
            *psVar10 = sVar11 + -3;
            psVar10[2] = sVar11 + -2;
            psVar10[3] = sVar11 + -2;
            psVar10[1] = sVar11;
            psVar10[4] = sVar11;
            psVar10[5] = sVar11 + -1;
            psVar10 = psVar10 + 6;
            sVar11 = sVar11 + 4;
            uVar8 = uVar8 - 1;
          } while (uVar8 != 0);
        }
        FUN_0061a5d0(*(int *)(param_1 + 0x4c4));
      }
      FUN_006d00a0((void *)(param_1 + 0x4cc),*(int *)(param_1 + 0x4bc),*(int *)(param_1 + 0x4c0),
                   *(int *)(param_1 + 0x4c4),3,0,0,*(uint *)(*(int *)(param_1 + 0x4c4) + 0x18));
      *(undefined1 *)(param_1 + 0x4f4) = 1;
    }
    cVar3 = FUN_007b8850(*(int *)(*(int *)(param_1 + 0x4b0) + 0x34));
    if (cVar3 != '\0') {
      bVar2 = VertexFormatCache_GetOrCreate
                        (pvVar4,(NativeVertexElement8 *)&DAT_00ffc540,5,(void **)(param_1 + 0x4f8));
      uVar8 = CONCAT31(extraout_var_00,bVar2);
      if (!bVar2) {
LAB_0070e665:
        return uVar8 & 0xffffff00;
      }
      puVar6 = (undefined4 *)FUN_004e4520(0x20,4,0,"SpeedTree/VertexBuffer",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_0061aa60(puVar6);
      }
      *(int **)(param_1 + 0x4fc) = piVar7;
      (**(code **)(*piVar7 + 4))();
      uVar8 = FUN_0061a8a0(*(void **)(param_1 + 0x4fc),uVar13 * 0x90,0);
      if ((char)uVar8 == '\0') goto LAB_0070e665;
      iVar9 = FUN_0061a560(*(void **)(param_1 + 0x4fc),0,0,0);
      if (iVar9 != 0) {
        if (sVar12 != 0) {
          iVar9 = 0;
          uStack_58 = uVar13;
          do {
            uVar16 = *(undefined4 *)(*(int *)(param_1 + 0x210) + 0x78 + iVar9);
            iVar1 = *(int *)(*(int *)(param_1 + 0x4b0) + 0x34);
            pvVar4 = (void *)(*(int *)(param_1 + 0x210) + iVar9);
            pfVar15 = (float *)((int)pvVar4 + 0x48);
            uVar14 = TreePrimitive_WriteYawMatrix(pvVar4,auStack_50);
            Flora_WriteHorizontalBillboardPacket
                      ((int)((ulonglong)uVar14 >> 0x20),iVar1,(float *)uVar14,pfVar15,uVar16);
            iVar9 = iVar9 + 0x80;
            uStack_58 = uStack_58 - 1;
          } while (uStack_58 != 0);
        }
        FUN_0061a5d0(*(int *)(param_1 + 0x4fc));
      }
      puVar6 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_006176a0(puVar6);
      }
      *(int **)(param_1 + 0x500) = piVar7;
      (**(code **)(*piVar7 + 4))();
      uVar8 = FUN_006175b0(*(void **)(param_1 + 0x500),uVar13 * 6,0,0);
      if ((char)uVar8 == '\0') goto LAB_0070e665;
      psVar10 = (short *)FUN_00617380(*(void **)(param_1 + 0x500),0,0,0);
      if (psVar10 != (short *)0x0) {
        if (sVar12 != 0) {
          sVar12 = 3;
          do {
            *psVar10 = sVar12 + -3;
            psVar10[2] = sVar12 + -2;
            psVar10[3] = sVar12 + -2;
            psVar10[1] = sVar12;
            psVar10[4] = sVar12;
            psVar10[5] = sVar12 + -1;
            psVar10 = psVar10 + 6;
            sVar12 = sVar12 + 4;
            uVar13 = uVar13 - 1;
          } while (uVar13 != 0);
        }
        FUN_0061a5d0(*(int *)(param_1 + 0x500));
      }
      FUN_006d00a0((void *)(param_1 + 0x508),*(int *)(param_1 + 0x4f8),*(int *)(param_1 + 0x4fc),
                   *(int *)(param_1 + 0x500),3,0,0,*(uint *)(*(int *)(param_1 + 0x500) + 0x18));
      *(undefined1 *)(param_1 + 0x530) = 1;
    }
    in_EAX = Flora_GenerateBillboardLodAndLightingConstants(param_1);
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

