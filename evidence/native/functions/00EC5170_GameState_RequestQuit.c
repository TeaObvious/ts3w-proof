/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (78 bytes/25 instructions). Stack argument is passed as controller
   ECX to 00EC5240. Allocates eight bytes using label Misc/GameState/GameStateQuit; nonnull result
   receives vtable010F4CD0 and zero at+0x4. Both allocation-result branches call SetPending with
   state-or-null and opaque tag028D869F. Both normal returns write AL=1 only; upper EAX is not
   normalized. This is request admission, not proof of eventual queue completion or process exit.
   Allocator and virtual lifetime child effects remain separate; stored prototype is preserved. */

undefined4 __cdecl GameState_RequestQuit(void *param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)FUN_004e4500(8,"Misc/GameState/GameStateQuit",0);
  if (piVar1 != (int *)0x0) {
    *piVar1 = (int)&PTR_FUN_010f4cd0;
    piVar1[1] = 0;
    uVar2 = StateController_SetPending(param_1,piVar1,0x28d869f);
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  uVar2 = StateController_SetPending(param_1,(int *)0x0,0x28d869f);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

