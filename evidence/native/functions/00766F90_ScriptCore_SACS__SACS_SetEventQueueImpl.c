/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_SetEventQueueImpl. Resolves driver and queue handles
   separately through host vtable +0xCC, then passes the resulting queue pointer to 0x007FFFA0 when
   the driver exists. Missing driver is a no-op at this entry. Raw proof: the reviewed original
   reference reference PC1.67 identity recorded centrally
   
   Analyst note (PC1.67 SACS host reset contract): Original SetEventQueue bridge resolves driver and
   queue numeric handles separately through global+CC=76A590, then calls7FFFA0 with resolved queue
   POINTER if driver exists. The stored C prototype shifts/merges physical arguments: actual
   original stack arguments, not duplicated param_1 text, establish separate handle inputs. 7FFFA0
   retains new queue pointer and releases old. */

void ScriptCore_SACS__SACS_SetEventQueueImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    SacsDriver_SetRetainedEventQueue(this,piVar1);
  }
  return;
}

