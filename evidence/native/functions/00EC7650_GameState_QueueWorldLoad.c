/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Original instruction review; analyst name. cdecl game-state machine pointer and UTF-16 filename
   on stack; plain RET. Creates0x24-byte GameStateInWorld state: vtable010f5778, machine+0c,
   filename string+10 and unloaded World pointer+20. Queues via00ec5240 with state-id028d6958.
   Loading consumer00ec7250 resolves raw-world versus colon-qualified save filename. */

void __cdecl GameState_QueueWorldLoad(void *param_1,short *param_2)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_004e4500(0x24,"Misc/GameState/GameStateInWorld",0);
  if (piVar1 == (int *)0x0) {
    StateController_SetPending(param_1,(int *)0x0,0x28d6958);
    return;
  }
  piVar1[1] = 0;
  *piVar1 = (int)&PTR_IncrementReferenceCount_010f5778;
  piVar1[2] = 0;
  piVar1[3] = (int)param_1;
  piVar1[4] = 0;
  piVar1[5] = 0;
  piVar1[6] = 0;
  piVar1[7] = (int)"UI/MainMenu";
  FUN_0040b590(piVar1 + 4,param_2);
  piVar1[8] = 0;
  StateController_SetPending(param_1,piVar1,0x28d6958);
  return;
}

