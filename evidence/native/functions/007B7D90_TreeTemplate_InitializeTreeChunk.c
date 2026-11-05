/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name, PC 1.67 original instruction comparison. ECX owner plus three stack words; RET 0xC.
   Success/failure is in AL; stored undefined4 return does not certify upper EAX bits. TREE magic
   0x45455254, exact versions 0x201/0x202. Optional byte-order normalization swaps complete DWORDs
   in the shared payload backing before reads, preserving aliases. 201 collision reads one byte; 202
   reads uint32. The four scalar lanes use x87 FLD/FSTP: signaling-NaN bit identity is not
   guaranteed. 202 clears vector end, compares component count with uint32-wrapped 3*N, resizes
   Vector16 only on equality and fills X/Y/Z/X; mismatch succeeds empty. This unsafe native reader
   does not establish managed length/allocation safety. */

undefined4 __thiscall
TreeTemplate_InitializeTreeChunk(void *this,int *param_1,undefined4 param_2,char param_3)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint *puVar6;
  undefined4 uVar7;
  int iVar8;
  uint *puVar9;
  
  if (param_1[1] == 0) {
    puVar9 = (uint *)0x0;
  }
  else {
    puVar9 = *(uint **)(param_1[1] + 8);
  }
  uVar5 = (**(code **)(*param_1 + 0x1c))();
  if (param_3 != '\0') {
    uVar5 = ResourceBytes_SwapDwordsInPlace(puVar9,uVar5 >> 2);
  }
  if (((*puVar9 == 0x45455254) && (uVar5 = puVar9[1], 0x200 < uVar5)) && (uVar5 < 0x300)) {
    if (uVar5 == 0x201) {
      uVar5 = puVar9[4];
      uVar2 = puVar9[2];
      uVar3 = puVar9[3];
      *(uint *)((int)this + 0x30) = uVar2;
      *(uint *)((int)this + 0x34) = uVar3;
      *(uint *)((int)this + 0x38) = uVar5;
      *(uint *)((int)this + 0x3c) = uVar2;
      uVar5 = puVar9[7];
      uVar2 = puVar9[5];
      uVar3 = puVar9[6];
      *(uint *)((int)this + 0x40) = uVar2;
      *(uint *)((int)this + 0x44) = uVar3;
      *(uint *)((int)this + 0x48) = uVar5;
      *(uint *)((int)this + 0x4c) = uVar2;
      *(uint *)((int)this + 0x50) = puVar9[8];
      *(uint *)((int)this + 0x54) = puVar9[9];
      *(uint *)((int)this + 0x58) = puVar9[10];
      *(uint *)((int)this + 0x5c) = puVar9[0xb];
      *(uint *)((int)this + 0x60) = (uint)(byte)puVar9[0xc];
      *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 100);
    }
    else {
      uVar5 = uVar5 - 0x202;
      if (uVar5 != 0) goto LAB_007b7fa5;
      uVar5 = puVar9[4];
      uVar2 = puVar9[2];
      uVar3 = puVar9[3];
      *(uint *)((int)this + 0x30) = uVar2;
      *(uint *)((int)this + 0x34) = uVar3;
      *(uint *)((int)this + 0x38) = uVar5;
      *(uint *)((int)this + 0x3c) = uVar2;
      uVar5 = puVar9[7];
      uVar2 = puVar9[5];
      uVar3 = puVar9[6];
      *(uint *)((int)this + 0x40) = uVar2;
      *(uint *)((int)this + 0x44) = uVar3;
      *(uint *)((int)this + 0x48) = uVar5;
      *(uint *)((int)this + 0x4c) = uVar2;
      *(uint *)((int)this + 0x50) = puVar9[8];
      *(uint *)((int)this + 0x54) = puVar9[9];
      *(uint *)((int)this + 0x58) = puVar9[10];
      *(uint *)((int)this + 0x5c) = puVar9[0xb];
      *(uint *)((int)this + 0x60) = puVar9[0xc];
      *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 100);
      if (puVar9[0xf] * 3 == puVar9[0x10]) {
        Vector16_ResizeCount((undefined4 *)((int)this + 100),puVar9[0xf]);
        uVar5 = 0;
        if (puVar9[0xf] != 0) {
          puVar6 = puVar9 + 0x12;
          iVar8 = 0;
          do {
            uVar2 = puVar6[1];
            uVar3 = puVar6[-1];
            uVar4 = *puVar6;
            puVar1 = (uint *)(*(int *)((int)this + 100) + iVar8);
            *puVar1 = uVar3;
            puVar1[1] = uVar4;
            puVar1[2] = uVar2;
            puVar1[3] = uVar3;
            uVar5 = uVar5 + 1;
            puVar6 = puVar6 + 3;
            iVar8 = iVar8 + 0x10;
          } while (uVar5 < puVar9[0xf]);
          uVar7 = FUN_00731be0((void *)((int)this + 8),0x80);
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
      }
    }
    uVar7 = FUN_00731be0((void *)((int)this + 8),0x80);
    return CONCAT31((int3)((uint)uVar7 >> 8),1);
  }
LAB_007b7fa5:
  return uVar5 & 0xffffff00;
}

