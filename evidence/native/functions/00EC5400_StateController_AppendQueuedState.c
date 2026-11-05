/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (97 bytes/39 instructions). ECX=controller, stack(state,tag), RET8.
   Nonnull incoming virtual+0x0 runs before capacity work. Unsigned end+0x18<capacity+0x1C advances
   end by8 and zeroes the old-end record when nonnull; otherwise calls0040C540 on vector+0x14 with a
   zero temporary record. Reloads end and writes state/tag at end-8/end-4. Paired consumer00EC5470
   takes the last eight-byte record. Growth/allocation failure, callback effects and recovery remain
   unproved; no prototype/type changes. */

void __thiscall StateController_AppendQueuedState(void *this,undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (param_1 != (undefined4 *)0x0) {
    (**(code **)*param_1)();
  }
  puVar1 = *(undefined4 **)((int)this + 0x18);
  if (puVar1 < *(undefined4 **)((int)this + 0x1c)) {
    *(undefined4 **)((int)this + 0x18) = puVar1 + 2;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = 0;
      puVar1[1] = 0;
    }
  }
  else {
    uStack_8 = 0;
    uStack_4 = 0;
    FUN_0040c540((void *)((int)this + 0x14),puVar1,&uStack_8);
  }
  iVar2 = *(int *)((int)this + 0x18);
  *(undefined4 **)(iVar2 + -8) = param_1;
  *(undefined4 *)(iVar2 + -4) = param_2;
  return;
}

