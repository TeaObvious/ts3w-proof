/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Current instruction qualification: stored DB body is ONE BYTE/zero owned instructions; the old noargstdcall prototype does not establish ABI. Newly necessary raw original CFG window in paired ASM179bytes73instructions, all3RET paths, two caller-cleaned GUID words, signedEAX -9/-8/0. DB body/prototype preserved; no re-export/reanalysis/repair/save. Actual SACS reset precedes absent-Animation -8. */

/* Verified PC 1.67 registration table at 0x01161eb0 (TS3W.exe PC1.67 identity recorded centrally).
   ScriptCore.SACS::SACS_StopAllAnimationImpl [assembly=ScriptCore token=0x06000D75; objGuid:
   Sims3.SimIFace.ObjectGuid; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS host reset contract): Original registered StopAllAnimation bridge.
   Resolve and retain host object; obtain SACS component and call94D490, which resets then
   drains/unpublishes all hosted driver handles. Then obtain Animation component and invoke
   virtual+18 stop-all. Return -9 for missing object, -8 for missing Animation component, zero for
   ordinary success; object reference release pairs original branches. Other graphs merely binding
   this object belong to their own host component. Simplified decompiler prototype does not
   establish physical ObjectGuid argument ABI. */

undefined4 ScriptCore_SACS__SACS_StopAllAnimationImpl(void)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *this;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this == (undefined4 *)0x0) {
    return 0xfffffff7;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  pvVar3 = Object_GetComponentByMask(this,DAT_011ea0f0);
  if (pvVar3 != (void *)0x0) {
    SacsComponent_ResetAndUnpublishDrivers((int)pvVar3);
  }
  pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
  if (pvVar3 == (void *)0x0) {
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
    return 0xfffffff8;
  }
  (**(code **)(*(int *)((int)pvVar3 + 8) + 0x18))();
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*this)(1);
  }
  return 0;
}

