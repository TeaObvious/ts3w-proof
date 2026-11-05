/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011611c0 (original PC 1.67 TS3W.exe).
   ScriptCore.EventQueue::EventQueue_CreateEventQueueImpl [assembly=ScriptCore token=0x060005EE;
   callback: System.Delegate; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_EventQueue__EventQueue_CreateEventQueueImpl(undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar1 + 0x118))();
  puVar2 = (undefined4 *)FUN_004e4500(0xc,"Scripting/EventQueueHost/CreateQueue",0);
  puVar3 = (undefined4 *)0x0;
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 0;
    *puVar2 = &PTR_FUN_010022d0;
    puVar2[2] = param_1;
    puVar3 = puVar2;
  }
  (**(code **)*puVar3)();
  (**(code **)(*piVar1 + 200))(puVar3,0x22);
  return;
}

