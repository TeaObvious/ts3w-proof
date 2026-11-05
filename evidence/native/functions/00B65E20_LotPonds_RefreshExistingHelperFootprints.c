/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 generated lot-pond footprint comparison): Physical ECX pond manager, no
   stack arguments, plain RET. Read0x60-byte record span manager+C..+10 and global registry. For
   each record with nonzero GUID+48/+4C, lookup actual object; absent skips. Atomically increment
   object+4, PUSH row then object and CALL B64CE0 (calleeRET8), atomically decrement afterward. If
   prior count1 restore original reference convention to1 then virtual destructor slot0 with
   argument1. No new lookup/createdobject, unsignedID, lock-held whole rebuild, thread affinity or
   current lifecycleGate equivalence established. Existing B65220 also calls B64CE0 after native
   transform assignment; reuse its complete canonical pair. */

void __fastcall LotPonds_RefreshExistingHelperFootprints(int param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  void *this;
  undefined4 *puVar4;
  int iVar5;
  
  this = ObjectRegistry_GetGlobal();
  iVar5 = *(int *)(param_1 + 0xc);
  if ((iVar5 != *(int *)(param_1 + 0x10)) && (this != (void *)0x0)) {
    iVar3 = *(int *)(param_1 + 0x10);
    for (; iVar5 != iVar3; iVar5 = iVar5 + 0x60) {
      if ((*(int *)(iVar5 + 0x48) != 0 || *(int *)(iVar5 + 0x4c) != 0) &&
         (puVar4 = ObjectRegistry_FindBorrowed(this,*(ulonglong *)(iVar5 + 0x48)),
         puVar4 != (undefined4 *)0x0)) {
        piVar1 = puVar4 + 1;
        LOCK();
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        LotPonds_SetHelperRectangleFootprint(puVar4,iVar5);
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*puVar4)(1);
        }
      }
    }
  }
  return;
}

