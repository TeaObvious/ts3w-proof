/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Original instruction review; analyst name. cdecl state machine pointer on stack; plain RET.
   Creates0x0c-byte GameStateNotInGame state, vtable010f5794, machine pointer+8; queues00ec5240 with
   state-id028d6e03. Scheduling does not establish shutdown callback completion. */

void __cdecl GameState_QueueNotInWorld(void *param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_004e4500(0xc,"Misc/GameState/GameStateNotInGame",0);
  if (piVar1 == (int *)0x0) {
    StateController_SetPending(param_1,(int *)0x0,0x28d6e03);
    return;
  }
  piVar1[1] = 0;
  *piVar1 = (int)&PTR_IncrementReferenceCount_010f5794;
  piVar1[2] = (int)param_1;
  StateController_SetPending(param_1,piVar1,0x28d6e03);
  return;
}

