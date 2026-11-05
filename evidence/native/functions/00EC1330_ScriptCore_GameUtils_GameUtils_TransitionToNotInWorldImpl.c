/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197128 (TS3W.exe).
   ScriptCore.GameUtils::GameUtils_TransitionToNotInWorldImpl [assembly=ScriptCore token=0x06000235;
   ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: registered no-argument void boundary. Non-null global game-state
   machine012007ac queues NotInGame state00ec71b0; the managed LeaveInWorldState waits for
   OnEnterNotInWorld notification before scheduling destination load. */

void ScriptCore_GameUtils__GameUtils_TransitionToNotInWorldImpl(void)

{
  if (DAT_012007ac != (void *)0x0) {
    GameState_QueueNotInWorld(DAT_012007ac);
  }
  return;
}

