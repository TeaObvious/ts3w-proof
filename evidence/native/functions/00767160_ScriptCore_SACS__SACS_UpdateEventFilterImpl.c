/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 registered
   ScriptCore.SACS::SACS_UpdateEventFilterImpl: physical cdecl five stack dwords (driver handle,
   event type, subtype, id, operation), plain RET leaves caller cleanup. Driver lookup through
   global interface virtual+CC uses first argument; null driver does nothing. CMP operation,3 /
   unsigned JA rejects all values above3. Jump table007671D0
   entries00767191,00767195,007671AF,007671B3: operation0 append with lowbyte1 (one-shot),1 append0
   (persistent),2/3 remove first exact triple. Both leaves consume four physical slots RET10;
   removal ignores the fourth. Wrapper only initializes the low byte of a local dword before pushing
   it, so do not treat upper bits as a Boolean contract. Actual type/subtype/id are arguments2/3/4;
   old inferred four-argument prototype was unreliable. Body bounded00767160..007671CC by all branch
   paths and two plain returns; referenced table007671D0..DF is preserved outside owned code. */

void ScriptCore_SACS__SACS_UpdateEventFilterImpl
               (int param_1,int param_2,int param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  undefined1 uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    uVar2 = 0;
    switch(param_4) {
    case 0:
      uVar2 = 1;
    case 1:
      SacsEventFilters_AppendRow(this,param_1,param_2,param_3,uVar2);
      return;
    case 2:
    case 3:
      SacsEventFilters_RemoveFirstExact(this,param_1,param_2,param_3);
    }
  }
  return;
}

