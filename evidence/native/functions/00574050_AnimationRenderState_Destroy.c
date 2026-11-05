/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 complete native render-state destructor, physical ECX only, tail-jumps00574010
   with ECX=state+10. Restore FC3D90 vtable. Free the allocation encoded by+34 maskedFFFFFFFC while
   preserving low two flag bits; clear+24 before atomically releasing retained input; free matrix+28
   and weight+30 storage, clearing their observed fields/count. Then re-read+24 and conditionally
   release its actual current reference, release source+20 through virtual4, and destroy the two
   cached pose entries. The second input read remains actual code and is not discarded as redundant
   under assumed reentrance. This destructor does not free its containing0x50 allocation: actual
   replacement006F4F70 and component teardown006F5AA0 call004E44E0 afterward. No exception rollback
   or current IDisposable semantics are invented. */

void __fastcall AnimationRenderState_Destroy(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  void *allocation;
  
  uVar3 = param_1[0xd];
  allocation = (void *)(uVar3 & 0xfffffffc);
  *param_1 = &PTR_AnimationRenderState_ConsumeSourceReference_00fc3d90;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
    param_1[0xd] = uVar3 & 3;
  }
  puVar4 = (undefined4 *)param_1[9];
  param_1[9] = 0;
  if (puVar4 != (undefined4 *)0x0) {
    piVar1 = puVar4 + 1;
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
  if ((void *)param_1[10] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[10]);
    param_1[10] = 0;
  }
  if ((void *)param_1[0xc] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[0xc]);
    param_1[0xc] = 0;
    param_1[0xb] = 0;
  }
                    /* Real second read of+24 after prior clear/release/storage cleanup; do not
                       optimize away by assuming no reentrance. */
  puVar4 = (undefined4 *)param_1[9];
  if (puVar4 != (undefined4 *)0x0) {
    piVar1 = puVar4 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar4 != (undefined4 *)0x0) {
        (**(code **)*puVar4)(1);
      }
    }
  }
  if ((int *)param_1[8] != (int *)0x0) {
    (**(code **)(*(int *)param_1[8] + 4))();
  }
                    /* Tail-call cache subobject destructor with ECX=state+10: it releases state+18
                       then+10 and does not zero keys. */
  AnimationPoseCache_DestroyEntries((int)(param_1 + 4));
  return;
}

