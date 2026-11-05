/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX interactive tool receiver, two ignored caller stack DWORDs and RET8; AL1 result.
   While engaged64, undoable188 virtual24 chooses abort virtual8 or D24300 then CD3A20 submit,
   releases reference/state, updates tool. After that, sound17C nonzero calls8608E0(sound,0) and
   clears17C (including redundant tests/clear). Full undoable, callback and backend stop semantics
   remain separate; stored fastcall C omits ignored stack words. */

undefined4 __fastcall LotPaintTool_ReleaseWithSound(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  char cVar3;
  undefined4 uVar4;
  
  if (*(char *)((int)param_1 + 100) != '\0') {
    FUN_00cd3810((int)param_1);
    if (*(int **)((int)param_1 + 0x188) != (int *)0x0) {
      cVar3 = (**(code **)(**(int **)((int)param_1 + 0x188) + 0x24))();
      if (cVar3 == '\0') {
        (**(code **)(**(int **)((int)param_1 + 0x188) + 8))();
      }
      else {
        FUN_00d24300((int)*(int **)((int)param_1 + 0x188));
        FUN_00cd3a20(param_1,*(int **)((int)param_1 + 0x188),'\0');
      }
    }
    puVar1 = *(undefined4 **)((int)param_1 + 0x188);
    if (puVar1 != (undefined4 *)0x0) {
      *(undefined4 *)((int)param_1 + 0x188) = 0;
      iVar2 = puVar1[1];
      puVar1[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
    *(undefined1 *)((int)param_1 + 100) = 0;
    *(undefined1 *)((int)param_1 + 0xc9) = 0;
    FUN_00ced6c0((int)param_1);
    FUN_00cee5a0((int)param_1 + -0x28);
  }
  uVar4 = thunk_FUN_00792320();
  if (*(int *)((int)param_1 + 0x17c) != 0) {
    uVar4 = 0;
    if (*(int *)((int)param_1 + 0x17c) != 0) {
      uVar4 = Audio_SubmitHandleStopCommand(*(int *)((int)param_1 + 0x17c));
      *(undefined4 *)((int)param_1 + 0x17c) = 0;
    }
    *(undefined4 *)((int)param_1 + 0x17c) = 0;
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

