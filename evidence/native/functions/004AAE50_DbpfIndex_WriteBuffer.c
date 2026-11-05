/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 actual index vtableFB3920+38. ECX owner,
   outBuffer/outBytes/opaqueoption threewords RET0C; AL success. Writes flags low3 sharedT/G/high
   words, hash-table traversal records; stored size always OR80000000 plus codecushort and bit16
   metadata. Retains authored row identities; writer iteration is not physical input row-order
   evidence. */

undefined1 __thiscall
DbpfIndex_WriteBuffer(void *this,undefined4 *outBuffer,undefined4 *outBytes,uint option)

{
  int *piVar1;
  int iVar2;
  uint *puVar3;
  uint *puVar4;
  int *piVar5;
  int iVar6;
  uint *puVar7;
  char cVar8;
  uint uVar9;
  uint unaff_EBX;
  uint unaff_EBP;
  undefined4 unaff_ESI;
  char unaff_retaddr;
  char cVar10;
  char cVar11;
  undefined4 uStack_10;
  int local_c;
  int *local_8;
  int local_4;
  
  piVar5 = *(int **)((int)this + 0xc);
  iVar6 = *piVar5;
  cVar8 = '\x01';
  iVar2 = *(int *)((int)this + 0x14);
  uStack_10._0_3_ = CONCAT12(1,(ushort)uStack_10);
  uStack_10 = CONCAT13(1,(uint3)uStack_10);
  uStack_10._0_2_ = CONCAT11(1,(byte)uStack_10);
  local_c = 0;
  local_8 = (int *)0x0;
  local_4 = 0;
  if (iVar6 == 0) {
    piVar5 = piVar5 + 1;
    iVar6 = *piVar5;
    while (iVar6 == 0) {
      piVar5 = piVar5 + 1;
      iVar6 = *piVar5;
    }
    iVar6 = *piVar5;
  }
  if (iVar2 == 0) {
    cVar8 = '\0';
    uStack_10 = (uint)(byte)uStack_10;
  }
  else {
    local_c = *(int *)(iVar6 + 8);
    local_8 = *(int **)(iVar6 + 0xc);
    local_4 = *(int *)(iVar6 + 4);
    iVar6 = *(int *)(iVar6 + 0x20);
    while (iVar6 == 0) {
      piVar1 = piVar5 + 1;
      piVar5 = piVar5 + 1;
      iVar6 = *piVar1;
    }
  }
  uVar9 = uStack_10;
  do {
    uStack_10._3_1_ = (char)(uVar9 >> 0x18);
    if (iVar6 == *(int *)(*(int *)((int)this + 0xc) + *(int *)((int)this + 0x10) * 4)) {
      iVar6 = 0x20;
      *outBytes = 4;
      if (cVar8 != '\0') {
        *outBytes = 8;
        iVar6 = 0x1c;
      }
      if (uStack_10._3_1_ != '\0') {
        *outBytes = *outBytes + 4;
        iVar6 = iVar6 + -4;
      }
      uStack_10._1_1_ = (char)(uVar9 >> 8);
      if (uStack_10._1_1_ != '\0') {
        *outBytes = *outBytes + 4;
        iVar6 = iVar6 + -4;
      }
      *outBytes = *outBytes + iVar6 * iVar2;
      puVar4 = (uint *)(**(code **)(**(int **)((int)this + 4) + 8))
                                 (*outBytes,"ResourceLoad/PackedFile/IndexImage",0);
      *local_8 = (int)puVar4;
      if (puVar4 == (uint *)0x0) {
        return 0;
      }
      cVar10 = (char)((uint)unaff_ESI >> 8);
      cVar11 = (char)((uint)unaff_ESI >> 0x18);
      *puVar4 = -(uint)(cVar10 != '\0') & 4 | -(uint)(cVar11 != '\0') & 2 | (uint)(cVar8 != '\0');
      iVar6 = 1;
      if (cVar8 != '\0') {
        puVar4[1] = unaff_EBP;
        iVar6 = 2;
      }
      if (cVar11 != '\0') {
        puVar4[iVar6] = unaff_EBX;
        iVar6 = iVar6 + 1;
      }
      if (cVar10 != '\0') {
        puVar4[iVar6] = uVar9;
        iVar6 = iVar6 + 1;
      }
      piVar5 = *(int **)((int)this + 0xc);
      puVar7 = (uint *)*piVar5;
      if (puVar7 == (uint *)0x0) {
        piVar5 = piVar5 + 1;
        iVar2 = *piVar5;
        while (iVar2 == 0) {
          piVar5 = piVar5 + 1;
          iVar2 = *piVar5;
        }
        puVar7 = (uint *)*piVar5;
      }
      puVar3 = *(uint **)(*(int *)((int)this + 0xc) + *(int *)((int)this + 0x10) * 4);
      if (puVar7 != puVar3) {
        puVar4 = puVar4 + iVar6;
        do {
          if ((char)((uint)unaff_ESI >> 0x10) == '\0') {
            *puVar4 = puVar7[2];
            puVar4 = puVar4 + 1;
          }
          if (cVar11 == '\0') {
            *puVar4 = puVar7[3];
            puVar4 = puVar4 + 1;
          }
          if (cVar10 == '\0') {
            *puVar4 = puVar7[1];
            puVar4 = puVar4 + 1;
          }
          *puVar4 = *puVar7;
          puVar4[1] = puVar7[4];
          puVar4[2] = puVar7[5] | 0x80000000;
          puVar4[3] = puVar7[6];
          if ((*(char *)((int)puVar7 + 0x1e) == '\0') && (unaff_retaddr == '\0')) {
            uVar9 = 0;
          }
          else {
            uVar9 = 0x10000;
          }
          puVar4[4] = (ushort)puVar7[7] | uVar9;
          puVar4 = puVar4 + 5;
          puVar7 = (uint *)puVar7[8];
          while (puVar7 == (uint *)0x0) {
            piVar1 = piVar5 + 1;
            piVar5 = piVar5 + 1;
            puVar7 = (uint *)*piVar1;
          }
        } while (puVar7 != puVar3);
      }
      return 1;
    }
    if (cVar8 == '\0') {
LAB_004aaef2:
      uStack_10 = uVar9;
      uStack_10._0_3_ = (uint3)(ushort)uStack_10;
    }
    else {
      uStack_10._0_2_ = (ushort)uVar9;
      uStack_10._0_3_ = CONCAT12(1,(ushort)uStack_10);
      uVar9 = uStack_10;
      if (*(int *)(iVar6 + 8) != local_c) goto LAB_004aaef2;
    }
    if (uStack_10._3_1_ == '\0') {
LAB_004aaf0c:
      uStack_10 = uStack_10 & 0xffffff;
    }
    else {
      uStack_10 = CONCAT13(1,(uint3)uStack_10);
      if (*(int **)(iVar6 + 0xc) != local_8) goto LAB_004aaf0c;
    }
    if (uStack_10._1_1_ == '\0') {
LAB_004aaf26:
      uStack_10._0_2_ = (ushort)(byte)uStack_10;
    }
    else {
      uStack_10._0_2_ = CONCAT11(1,(byte)uStack_10);
      if (*(int *)(iVar6 + 4) != local_4) goto LAB_004aaf26;
    }
    iVar6 = *(int *)(iVar6 + 0x20);
    while (iVar6 == 0) {
      piVar1 = piVar5 + 1;
      piVar5 = piVar5 + 1;
      iVar6 = *piVar1;
    }
    cVar8 = uStack_10._2_1_;
    uVar9 = uStack_10;
  } while( true );
}

