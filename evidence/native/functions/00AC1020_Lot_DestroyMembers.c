/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction visual evidence/lifetime comparison): Analyst
   destructor-members role, not recovered symbol. ECX lot, no physical stack arguments or receiver
   copy in EDX; no dedicated return value established. Reinstall lot vtable010662A0,
   interface0107ADA4 and+A0 table01066294 matching actual AC0B60 constructor, then call ABF290 with
   DWORD1. Continue exact selected vector/string/buffer/interface/refcount cleanup and
   DeleteCriticalSection calls; no inferred universal asset free or GPU completion. Final AC1245 JMP
   C71D50 is a real tail transfer after restoring saved registers/local stack and ECX lot, included
   in complete owned body endingAC1249; it is not a missing RET or truncated function.
   Scalar-deleting caller AC3610 calls here atAC3613 then decides memory free using its own flag and
   assigns return receiver itself; this body is not that allocation-free wrapper. Existing original
   requested/readiness and live teardown remain distinct from immutable project receipt flags,
   curated packet hashes or visual-oracle admission. No original bytes changed. */

void __thiscall Lot_DestroyMembers(void *this)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  void *pvVar4;
  
  *(undefined ***)this = &PTR_FUN_010662a0;
  *(undefined ***)((int)this + 8) = &PTR_FUN_0107ada4;
  *(undefined ***)((int)this + 0xa0) = &PTR_LAB_01066294;
  Lot_ReleaseRetainedState(this,1);
  FUN_00a43240(*(uint *)((int)this + 0x434),*(uint *)((int)this + 0x438));
  if (*(void **)((int)this + 0x434) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x434));
  }
  puVar2 = *(undefined4 **)((int)this + 0x42c);
  if ((puVar2 != (undefined4 *)0x0) && (iVar3 = puVar2[1], puVar2[1] = iVar3 + -1, iVar3 + -1 == 0))
  {
    puVar2[1] = 1;
    (**(code **)*puVar2)(1);
  }
  puVar2 = *(undefined4 **)((int)this + 0x428);
  if ((puVar2 != (undefined4 *)0x0) && (iVar3 = puVar2[1], puVar2[1] = iVar3 + -1, iVar3 + -1 == 0))
  {
    puVar2[1] = 1;
    (**(code **)*puVar2)(1);
  }
  pvVar4 = *(void **)((int)this + 0x3f0);
  if ((2 < (int)(*(int *)((int)this + 0x3f8) - (int)pvVar4 & 0xfffffffeU)) &&
     (pvVar4 != (void *)0x0)) {
    Memory_FreeIfNonNull(pvVar4);
  }
  pvVar4 = *(void **)((int)this + 0x3d8);
  if ((2 < (int)(*(int *)((int)this + 0x3e0) - (int)pvVar4 & 0xfffffffeU)) &&
     (pvVar4 != (void *)0x0)) {
    Memory_FreeIfNonNull(pvVar4);
  }
  pvVar4 = *(void **)((int)this + 0x3c0);
  if ((2 < (int)(*(int *)((int)this + 0x3c8) - (int)pvVar4 & 0xfffffffeU)) &&
     (pvVar4 != (void *)0x0)) {
    Memory_FreeIfNonNull(pvVar4);
  }
  StreamReader_ReleaseAuxiliary((void *)((int)this + 0x3a8));
  FUN_00ae3580((int *)((int)this + 0x370));
  if (*(int **)((int)this + 0x36c) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x36c) + 8))();
  }
  if (*(int **)((int)this + 0x364) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x364) + 0xc))();
  }
  puVar2 = *(undefined4 **)((int)this + 0x31c);
  if (puVar2 != (undefined4 *)0x0) {
    piVar1 = puVar2 + 1;
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar2 != (undefined4 *)0x0) {
        (**(code **)*puVar2)(1);
      }
    }
  }
  puVar2 = *(undefined4 **)((int)this + 0x318);
  if (puVar2 != (undefined4 *)0x0) {
    piVar1 = puVar2 + 1;
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar2 != (undefined4 *)0x0) {
        (**(code **)*puVar2)(1);
      }
    }
  }
  puVar2 = *(undefined4 **)((int)this + 0x2e8);
  if (puVar2 != (undefined4 *)0x0) {
    piVar1 = puVar2 + 1;
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar2 != (undefined4 *)0x0) {
        (**(code **)*puVar2)(1);
      }
    }
  }
  DeleteCriticalSection((LPCRITICAL_SECTION)((int)this + 0x110));
  DeleteCriticalSection((LPCRITICAL_SECTION)((int)this + 0xf0));
  DeleteCriticalSection((LPCRITICAL_SECTION)((int)this + 0xd0));
  if (*(int **)((int)this + 0xa4) != (int *)0x0) {
    FUN_00688c50(*(int **)((int)this + 0xa4),*(undefined4 *)((int)this + 0xa8),
                 *(int *)((int)this + 0xac),*(uint *)((int)this + 0xb0),
                 *(undefined4 *)((int)this + 0xb4));
    *(undefined4 *)((int)this + 0xa4) = 0;
  }
  *(undefined ***)((int)this + 0xa0) = &PTR_LAB_00fb3ccc;
  FUN_00c71d50(this);
  return;
}

