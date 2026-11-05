/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197120 (TS3W.exe).
   ScriptCore.GameUtils::GameUtils_TransitionToLoadWorldImpl [assembly=ScriptCore token=0x06000234;
   worldFile: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: registered cdecl managed string handle; host vtable+58 supplies UTF-16
   filename. Non-null global game-state machine012007ac queues load state00ec7650. No direct loading
   or return status at this void boundary. */

void __cdecl ScriptCore_GameUtils__GameUtils_TransitionToLoadWorldImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if (DAT_012007ac != (void *)0x0) {
    GameState_QueueWorldLoad(DAT_012007ac,psVar2);
  }
  return;
}

