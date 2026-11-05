/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 tree texture instruction contract. ECX wrapper and one stack32-byte output view,
   RET4. Source bank atwrapper+DC. Arrays allocate count prefixDWORD plus pointer slots; seven
   string DATA POINTERS borrowed, not copied bytes. Output word0=seven bank0 channel pointers;
   word1=(vector70.end-begin)/112,word2=nested seven-pointer views; word3=vector80
   count,word4=nested views; word5=bank90 channels,word6=bank100 channels,word7=bank170 string.
   Native signed count math and allocation null dereferences are not safe-admission promises. Two
   body ranges exclude7B9E79..7F alignment. Material channel names need consumers, not ordinals
   alone. */

void __thiscall SptMaps_ExportBorrowedStringViews(void *this,uint *view)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int *piVar4;
  uint *puVar5;
  uint *puVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  
  if (DAT_011d9624 == (int *)0x0) {
    piVar4 = FUN_004e6f20(DAT_011cc864,0x20,0);
  }
  else {
    piVar4 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
  }
  if (piVar4 == (int *)0x0) {
    piVar7 = (int *)0x0;
  }
  else {
    piVar7 = piVar4 + 1;
    *piVar4 = 7;
    _DAT_011d9628 = _DAT_011d9628 + 0x20;
  }
  *view = (uint)piVar7;
  *piVar7 = **(int **)((int)this + 0xdc);
  *(undefined4 *)(*view + 4) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x10);
  *(undefined4 *)(*view + 8) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x20);
  *(undefined4 *)(*view + 0xc) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x30);
  *(undefined4 *)(*view + 0x10) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x40);
  *(undefined4 *)(*view + 0x14) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x50);
  *(undefined4 *)(*view + 0x18) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x60);
  uVar3 = (*(int *)(*(int *)((int)this + 0xdc) + 0x74) - *(int *)(*(int *)((int)this + 0xdc) + 0x70)
          ) / 0x70;
  view[1] = uVar3;
  if (uVar3 != 0) {
    uVar2 = uVar3 * 4 + 4;
    if (DAT_011d9624 == (int *)0x0) {
      puVar5 = (uint *)FUN_004e6f20(DAT_011cc864,uVar2,0);
    }
    else {
      puVar5 = (uint *)(**(code **)(*DAT_011d9624 + 4))(uVar2,0x10);
    }
    if (puVar5 == (uint *)0x0) {
      puVar6 = (uint *)0x0;
    }
    else {
      puVar6 = puVar5 + 1;
      *puVar5 = uVar3;
      _DAT_011d9628 = _DAT_011d9628 + uVar2;
    }
    iVar8 = 0;
    view[2] = (uint)puVar6;
    if (0 < (int)view[1]) {
      iVar9 = 0x30;
      do {
        if (DAT_011d9624 == (int *)0x0) {
          piVar4 = FUN_004e6f20(DAT_011cc864,0x20,0);
        }
        else {
          piVar4 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
        }
        if (piVar4 == (int *)0x0) {
          piVar7 = (int *)0x0;
        }
        else {
          piVar7 = piVar4 + 1;
          *piVar4 = 7;
          _DAT_011d9628 = _DAT_011d9628 + 0x20;
        }
        *(int **)(view[2] + iVar8 * 4) = piVar7;
        **(undefined4 **)(view[2] + iVar8 * 4) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + -0x30 + iVar9);
        *(undefined4 *)(*(int *)(view[2] + iVar8 * 4) + 4) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + -0x20 + iVar9);
        *(undefined4 *)(*(int *)(view[2] + iVar8 * 4) + 8) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + -0x10 + iVar9);
        *(undefined4 *)(*(int *)(view[2] + iVar8 * 4) + 0xc) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + iVar9);
        *(undefined4 *)(*(int *)(view[2] + iVar8 * 4) + 0x10) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + 0x10 + iVar9);
        *(undefined4 *)(*(int *)(view[2] + iVar8 * 4) + 0x14) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + 0x20 + iVar9);
        iVar1 = iVar8 * 4;
        iVar8 = iVar8 + 1;
        *(undefined4 *)(*(int *)(view[2] + iVar1) + 0x18) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x70) + 0x30 + iVar9);
        iVar9 = iVar9 + 0x70;
      } while (iVar8 < (int)view[1]);
    }
  }
  uVar3 = (*(int *)(*(int *)((int)this + 0xdc) + 0x84) - *(int *)(*(int *)((int)this + 0xdc) + 0x80)
          ) / 0x70;
  view[3] = uVar3;
  if (uVar3 != 0) {
    uVar2 = uVar3 * 4 + 4;
    if (DAT_011d9624 == (int *)0x0) {
      puVar5 = (uint *)FUN_004e6f20(DAT_011cc864,uVar2,0);
    }
    else {
      puVar5 = (uint *)(**(code **)(*DAT_011d9624 + 4))(uVar2,0x10);
    }
    if (puVar5 == (uint *)0x0) {
      puVar6 = (uint *)0x0;
    }
    else {
      puVar6 = puVar5 + 1;
      *puVar5 = uVar3;
      _DAT_011d9628 = _DAT_011d9628 + uVar2;
    }
    iVar8 = 0;
    view[4] = (uint)puVar6;
    if (0 < (int)view[3]) {
      iVar9 = 0x30;
      do {
        if (DAT_011d9624 == (int *)0x0) {
          piVar4 = FUN_004e6f20(DAT_011cc864,0x20,0);
        }
        else {
          piVar4 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
        }
        if (piVar4 == (int *)0x0) {
          piVar7 = (int *)0x0;
        }
        else {
          piVar7 = piVar4 + 1;
          *piVar4 = 7;
          _DAT_011d9628 = _DAT_011d9628 + 0x20;
        }
        *(int **)(view[4] + iVar8 * 4) = piVar7;
        **(undefined4 **)(view[4] + iVar8 * 4) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + -0x30 + iVar9);
        *(undefined4 *)(*(int *)(view[4] + iVar8 * 4) + 4) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + -0x20 + iVar9);
        *(undefined4 *)(*(int *)(view[4] + iVar8 * 4) + 8) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + -0x10 + iVar9);
        *(undefined4 *)(*(int *)(view[4] + iVar8 * 4) + 0xc) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + iVar9);
        *(undefined4 *)(*(int *)(view[4] + iVar8 * 4) + 0x10) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + 0x10 + iVar9);
        *(undefined4 *)(*(int *)(view[4] + iVar8 * 4) + 0x14) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + 0x20 + iVar9);
        iVar1 = iVar8 * 4;
        iVar8 = iVar8 + 1;
        *(undefined4 *)(*(int *)(view[4] + iVar1) + 0x18) =
             *(undefined4 *)(*(int *)(*(int *)((int)this + 0xdc) + 0x80) + 0x30 + iVar9);
        iVar9 = iVar9 + 0x70;
      } while (iVar8 < (int)view[3]);
    }
  }
  if (DAT_011d9624 == (int *)0x0) {
    piVar4 = FUN_004e6f20(DAT_011cc864,0x20,0);
  }
  else {
    piVar4 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
  }
  if (piVar4 == (int *)0x0) {
    piVar7 = (int *)0x0;
  }
  else {
    piVar7 = piVar4 + 1;
    *piVar4 = 7;
    _DAT_011d9628 = _DAT_011d9628 + 0x20;
  }
  view[5] = (uint)piVar7;
  *piVar7 = *(int *)(*(int *)((int)this + 0xdc) + 0x90);
  *(undefined4 *)(view[5] + 4) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xa0);
  *(undefined4 *)(view[5] + 8) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xb0);
  *(undefined4 *)(view[5] + 0xc) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xc0);
  *(undefined4 *)(view[5] + 0x10) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xd0);
  *(undefined4 *)(view[5] + 0x14) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xe0);
  *(undefined4 *)(view[5] + 0x18) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0xf0);
  if (DAT_011d9624 == (int *)0x0) {
    piVar4 = FUN_004e6f20(DAT_011cc864,0x20,0);
  }
  else {
    piVar4 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
  }
  if (piVar4 == (int *)0x0) {
    piVar7 = (int *)0x0;
  }
  else {
    piVar7 = piVar4 + 1;
    *piVar4 = 7;
    _DAT_011d9628 = _DAT_011d9628 + 0x20;
  }
  view[6] = (uint)piVar7;
  *piVar7 = *(int *)(*(int *)((int)this + 0xdc) + 0x100);
  *(undefined4 *)(view[6] + 4) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x110);
  *(undefined4 *)(view[6] + 8) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x120);
  *(undefined4 *)(view[6] + 0xc) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x130);
  *(undefined4 *)(view[6] + 0x10) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x140);
  *(undefined4 *)(view[6] + 0x14) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x150);
  *(undefined4 *)(view[6] + 0x18) = *(undefined4 *)(*(int *)((int)this + 0xdc) + 0x160);
  view[7] = *(uint *)(*(int *)((int)this + 0xdc) + 0x170);
  return;
}

