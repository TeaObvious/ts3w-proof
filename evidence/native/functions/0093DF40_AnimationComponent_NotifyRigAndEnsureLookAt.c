/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 resident-animation source comparison): Analyst role from93EB00 rig
   assignment follow-up. Physical component inECX, no consumed stack argument, plain RET; existing
   inferred fastcall one-ECX prototype is retained. If component+20 rig is nonnull, dispatch
   ObjectEvents event13 with owner+4 and rig+20; no event when null. Then only if LookAtController
   slot+28 is null, owner+2C intersects runtime mask11EA0FC and rig predicate57B690 returns AL
   nonzero, allocate34 hex bytes for Animation/LookAtController with six physical allocator words
   and initialize through580D80 before storing+28. Allocation null writes slot0. Existing controller
   is not recreated; predicate/flag false leaves slot unchanged.93EB00 physically invokes this for
   nonzero low-byte follow-up even after rig loading failed, but this body then sees null and
   returns.9407C0 passes follow-up0. This is concrete retained rig/event/optional LookAt ownership,
   not proof of current per-model reject/log/null, GPU readiness or source generation behavior.
   Foreign predicate/constructor/allocator semantics remain bounded; existing prototype artifacts do
   not add physical arguments. */

void __fastcall AnimationComponent_NotifyRigAndEnsureLookAt(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  if (*(void **)(param_1 + 0x20) != (void *)0x0) {
    ObjectEvents_Dispatch(0x13,*(void **)(param_1 + 4),*(void **)(param_1 + 0x20));
    if ((*(int *)(param_1 + 0x28) == 0) &&
       ((*(uint *)(*(int *)(param_1 + 4) + 0x2c) & DAT_011ea0fc) != 0)) {
      uVar1 = FUN_0057b690(*(int *)(param_1 + 0x20));
      if ((char)uVar1 != '\0') {
        iVar2 = FUN_004e4500(0x34,"Animation/LookAtController",0);
        if (iVar2 != 0) {
          uVar1 = FUN_00580d80(iVar2);
          *(undefined4 *)(param_1 + 0x28) = uVar1;
          return;
        }
        *(undefined4 *)(param_1 + 0x28) = 0;
      }
    }
  }
  return;
}

