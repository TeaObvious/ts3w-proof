/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool, two pointer words eventually forwarded to CCE800, RET8; stored one-parameter
   fastcall C omits these stack words. Changed undoable34 is submitted via CD3A20, retired/replaced;
   unchanged non-multi clears selection. Restores cursor05AED10D then updates tool/base release.
   Native undoable children are not full host history/reentry proof. */

void __fastcall RoofPitch_Release(void *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  void *this;
  undefined4 *puVar4;
  
  uVar3 = FUN_00d1a910(*(int **)((int)param_1 + 0x34));
  if ((char)uVar3 == '\0') {
    if (*(char *)((int)param_1 + 0x59) == '\0') {
      FUN_00d0eb40(param_1,0);
      FUN_00ae0410(*(int *)((int)param_1 + 0x3c),*(uint *)((int)param_1 + 0x40));
      *(undefined4 *)((int)param_1 + 0x44) = 0;
    }
  }
  else {
    FUN_00cd3a20(param_1,*(int **)((int)param_1 + 0x34),'\0');
    puVar4 = *(undefined4 **)((int)param_1 + 0x34);
    if (puVar4 != (undefined4 *)0x0) {
      *(undefined4 *)((int)param_1 + 0x34) = 0;
      iVar1 = puVar4[1];
      puVar4[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
    }
    this = (void *)FUN_004e4500(0x74,"UserTool/Roof/UndoableRoofPitch",0);
    if (this == (void *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00d2acf0(this,*(undefined4 **)((int)param_1 + 0xc));
    }
    puVar2 = *(undefined4 **)((int)param_1 + 0x34);
    if (puVar4 != puVar2) {
      if (puVar4 != (undefined4 *)0x0) {
        puVar4[1] = puVar4[1] + 1;
      }
      *(undefined4 **)((int)param_1 + 0x34) = puVar4;
      if ((puVar2 != (undefined4 *)0x0) &&
         (iVar1 = puVar2[1], puVar2[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        puVar2[1] = 1;
        (**(code **)*puVar2)(1);
      }
    }
    (**(code **)(**(int **)((int)param_1 + 0x34) + 4))();
  }
  FUN_00ccea10();
  thunk_FUN_00792320();
  UserTool_MarkReleased((int)param_1);
  return;
}

