/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Physical ECX interactive tool receiver, two ignored caller stack DWORDs and RET8; AL1 result.
   While engaged5E submits/aborts undoable16C, clears reference/engagement state and updates tool.
   Only afterwards, if sound164 nonzero, calls8608E0(sound,0) then clears164. This establishes
   sound-after-history ordering, not full water undoable/funds/backend-stop parity. Stored fastcall
   C omits ignored stack cleanup words. */

undefined4 __fastcall WaterTool_ReleaseWithSound(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  char cVar3;
  undefined4 uVar4;
  
  if (*(char *)((int)param_1 + 0x5e) != '\0') {
    FUN_00cd3810((int)param_1);
    if (*(int **)((int)param_1 + 0x16c) != (int *)0x0) {
      cVar3 = (**(code **)(**(int **)((int)param_1 + 0x16c) + 0x24))();
      if (cVar3 == '\0') {
        (**(code **)(**(int **)((int)param_1 + 0x16c) + 8))();
      }
      else {
        UserTool_SubmitUndoableWithCostEffects(param_1,*(int **)((int)param_1 + 0x16c),'\0');
      }
    }
    puVar1 = *(undefined4 **)((int)param_1 + 0x16c);
    if (puVar1 != (undefined4 *)0x0) {
      *(undefined4 *)((int)param_1 + 0x16c) = 0;
      iVar2 = puVar1[1];
      puVar1[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
    *(undefined1 *)((int)param_1 + 0x5e) = 0;
    *(undefined1 *)((int)param_1 + 0xbd) = 0;
    FUN_00ced6c0((int)param_1);
    FUN_00d3fe20((int)param_1 + -0x28);
  }
  uVar4 = 0;
  if (*(int *)((int)param_1 + 0x164) != 0) {
    uVar4 = Audio_SubmitHandleStopCommand(*(int *)((int)param_1 + 0x164));
    *(undefined4 *)((int)param_1 + 0x164) = 0;
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

