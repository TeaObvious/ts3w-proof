/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Tree component
   identity is established by original descriptor 0x0117cbd0, name Tree, registered mask global
   0x011ea290. Produces 0x40-byte relative matrices from 0x50-byte entries in component+8 resource.
   Inverts first matrix via 0x00562220, multiplies each source entry against inverse. Nonzero
   low-byte option scales first three rows by entry+0x48, preserving translation row. Complete Tree
   source-entry/resource creation remains open. */

void __thiscall TreeComponent_GetRelativeMatrices(void *this,int *param_1,char param_2)

{
  float fVar1;
  void *pvVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float *pfVar19;
  void *this_00;
  int iVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60 [4];
  undefined4 local_50 [19];
  
  FUN_005f1fc0(param_1,(*(int *)(*(int *)((int)this + 8) + 0xc) -
                       *(int *)(*(int *)((int)this + 8) + 8)) / 0x50);
  iVar20 = *(int *)((int)this + 8);
  if ((iVar20 != 0) && (*(void **)(iVar20 + 8) != *(void **)(iVar20 + 0xc))) {
    TreePrimitive_WriteYawMatrix(*(void **)(iVar20 + 8),local_50);
    pfVar19 = (float *)Matrix4_InvertWithReplicatedDeterminant
                                 ((undefined1 (*) [16])&local_a0,(undefined1 (*) [16])local_50,
                                  local_60);
    fVar3 = *pfVar19;
    fVar4 = pfVar19[1];
    fVar5 = pfVar19[2];
    fVar6 = pfVar19[3];
    fVar7 = pfVar19[4];
    fVar8 = pfVar19[5];
    fVar9 = pfVar19[6];
    fVar10 = pfVar19[7];
    fVar11 = pfVar19[8];
    fVar12 = pfVar19[9];
    fVar13 = pfVar19[10];
    fVar14 = pfVar19[0xb];
    fVar15 = pfVar19[0xc];
    fVar16 = pfVar19[0xd];
    fVar17 = pfVar19[0xe];
    fVar18 = pfVar19[0xf];
    this_00 = *(void **)(*(int *)((int)this + 8) + 8);
    pvVar2 = *(void **)(*(int *)((int)this + 8) + 0xc);
    if (this_00 != pvVar2) {
      iVar20 = 0;
      do {
        TreePrimitive_WriteYawMatrix(this_00,&local_a0);
        fVar21 = local_a0 * fVar3 + fStack_9c * fVar7 + fStack_98 * fVar11 + fStack_94 * fVar15;
        fVar22 = local_a0 * fVar4 + fStack_9c * fVar8 + fStack_98 * fVar12 + fStack_94 * fVar16;
        fVar23 = local_a0 * fVar5 + fStack_9c * fVar9 + fStack_98 * fVar13 + fStack_94 * fVar17;
        fVar24 = local_a0 * fVar6 + fStack_9c * fVar10 + fStack_98 * fVar14 + fStack_94 * fVar18;
        fVar25 = local_90 * fVar3 + fStack_8c * fVar7 + fStack_88 * fVar11 + fStack_84 * fVar15;
        fVar26 = local_90 * fVar4 + fStack_8c * fVar8 + fStack_88 * fVar12 + fStack_84 * fVar16;
        fVar27 = local_90 * fVar5 + fStack_8c * fVar9 + fStack_88 * fVar13 + fStack_84 * fVar17;
        fVar28 = local_90 * fVar6 + fStack_8c * fVar10 + fStack_88 * fVar14 + fStack_84 * fVar18;
        fVar29 = local_80 * fVar3 + fStack_7c * fVar7 + fStack_78 * fVar11 + fStack_74 * fVar15;
        fVar30 = local_80 * fVar4 + fStack_7c * fVar8 + fStack_78 * fVar12 + fStack_74 * fVar16;
        fVar31 = local_80 * fVar5 + fStack_7c * fVar9 + fStack_78 * fVar13 + fStack_74 * fVar17;
        fVar32 = local_80 * fVar6 + fStack_7c * fVar10 + fStack_78 * fVar14 + fStack_74 * fVar18;
        if (param_2 != '\0') {
          fVar1 = *(float *)((int)this_00 + 0x48);
          fVar21 = fVar1 * fVar21;
          fVar22 = fVar1 * fVar22;
          fVar23 = fVar1 * fVar23;
          fVar24 = fVar1 * fVar24;
          fVar25 = fVar1 * fVar25;
          fVar26 = fVar1 * fVar26;
          fVar27 = fVar1 * fVar27;
          fVar28 = fVar1 * fVar28;
          fVar29 = fVar1 * fVar29;
          fVar30 = fVar1 * fVar30;
          fVar31 = fVar1 * fVar31;
          fVar32 = fVar1 * fVar32;
        }
        pfVar19 = (float *)(*param_1 + iVar20);
        this_00 = (void *)((int)this_00 + 0x50);
        iVar20 = iVar20 + 0x40;
        *pfVar19 = fVar21;
        pfVar19[1] = fVar22;
        pfVar19[2] = fVar23;
        pfVar19[3] = fVar24;
        pfVar19[4] = fVar25;
        pfVar19[5] = fVar26;
        pfVar19[6] = fVar27;
        pfVar19[7] = fVar28;
        pfVar19[8] = fVar29;
        pfVar19[9] = fVar30;
        pfVar19[10] = fVar31;
        pfVar19[0xb] = fVar32;
        pfVar19[0xc] = local_70 * fVar3 + fStack_6c * fVar7 + fStack_68 * fVar11 +
                       fStack_64 * fVar15;
        pfVar19[0xd] = local_70 * fVar4 + fStack_6c * fVar8 + fStack_68 * fVar12 +
                       fStack_64 * fVar16;
        pfVar19[0xe] = local_70 * fVar5 + fStack_6c * fVar9 + fStack_68 * fVar13 +
                       fStack_64 * fVar17;
        pfVar19[0xf] = local_70 * fVar6 + fStack_6c * fVar10 + fStack_68 * fVar14 +
                       fStack_64 * fVar18;
      } while (this_00 != pvVar2);
    }
  }
  return;
}

