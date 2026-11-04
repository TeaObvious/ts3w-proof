/* Applies queued 8-byte event/payload records using the original begin/end snapshot, then reloads
   queue bounds for a separate payload-release pass and resets end to begin. No reentrancy or
   mutation safety is established. Analyst-assigned name. */

void __fastcall FlushDeferredFloorMessages(void *param_1)

{
  uint *puVar1;
  uint uVar2;
  uint *puVar3;
  uint uVar4;

  /* 00AA42D0: Two distinct passes: first AA3890 application over the original range, then virtual +8 release over reloaded bounds. This is not apply-and-release interleaved per entry. */
  puVar1 = *(uint **)((int)param_1 + 0x88);
  for (puVar3 = *(uint **)((int)param_1 + 0x84); puVar3 != puVar1; puVar3 = puVar3 + 2) {
    FloorRenderEvents_ApplyEvent(param_1,*puVar3,(void *)puVar3[1]);
  }
  uVar2 = *(uint *)((int)param_1 + 0x88);
  uVar4 = *(uint *)((int)param_1 + 0x84);
  if (uVar2 <= uVar4) {
    *(uint *)((int)param_1 + 0x88) = uVar4;
    return;
  }
  do {
    if (*(int **)(uVar4 + 4) != (int *)0x0) {
      (**(code **)(**(int **)(uVar4 + 4) + 8))();
    }
    uVar4 = uVar4 + 8;
  } while (uVar4 < uVar2);
  *(undefined4 *)((int)param_1 + 0x88) = *(undefined4 *)((int)param_1 + 0x84);
  return;
}
