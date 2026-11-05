/* Appends one 8-byte retained event/payload record. Spare-capacity path advances end by 8, copies
   both words and retains the payload. Full capacity delegates to A6BD10; allocator/movement/failure
   policy remains there. Analyst-assigned name. */

void __thiscall AppendRetainedMessageRecord(void *this,undefined4 *param_1)

{
  undefined4 *puVar1;
  int *piVar2;

  /* 00A6CA70: AA4350 constructs a local retained record first, appends it here, then releases the local payload. Spare-capacity append therefore leaves one additional queued reference. */
  puVar1 = *(undefined4 **)((int)this + 4);
  if (puVar1 < *(undefined4 **)((int)this + 8)) {
    *(undefined4 **)((int)this + 4) = puVar1 + 2;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = *param_1;
      piVar2 = (int *)param_1[1];
      puVar1[1] = piVar2;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
        return;
      }
    }
  }
  else {
    FUN_00a6bd10(this,puVar1,param_1);
  }
  return;
}
