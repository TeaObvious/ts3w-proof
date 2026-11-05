/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161710 (original PC 1.67 TS3W.exe).
   ScriptCore.Queries::Query_GetObjects [assembly=ScriptCore token=0x06000514; type: System.Type;
   return=System.Array]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Queries__Query_GetObjects(undefined4 param_1)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar1 + 0xc0))(param_1,0,0);
  return;
}

