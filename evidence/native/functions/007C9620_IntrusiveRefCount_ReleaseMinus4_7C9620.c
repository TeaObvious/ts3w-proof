/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete19-instruction generic helper: derive baseECX-8 and count(interface-4); LOCK
   XADD-1 then return decremented EAX if nonzero. At zero XCHG count to1 before invoking base vtable
   slot0 with stack argument1 when base nonnull; returnEAX0. No stack argument is consumed by this
   helper itself. SACS constructor804B00 binds this as0102112C slot+4; component sweep/drain and
   registered release use driver+8. Reset-before-deleting-call order is actual, not an inferred
   general COM lifecycle. Do not claim full manager/watch/table reference ownership. */

int __fastcall IntrusiveRefCount_ReleaseMinus4_7C9620(int param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)(param_1 + -4);
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  iVar2 = iVar2 + -1;
  if (iVar2 == 0) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    if ((undefined4 *)(param_1 + -8) != (undefined4 *)0x0) {
      (*(code *)**(undefined4 **)(param_1 + -8))(1);
    }
    iVar2 = 0;
  }
  return iVar2;
}

