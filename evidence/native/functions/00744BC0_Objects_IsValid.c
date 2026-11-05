/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161400 (TS3W.exe).
   ScriptCore.Objects::Objects_IsValid [assembly=ScriptCore token=0x06000001; id: System.UInt64;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. RegisteredI1boolbridge; full GUID lookup !=NULL. Does not
   independently inspectdestroyflag. Recoveredcompletebody744bc0..744bdc. */

bool __cdecl Objects_IsValid(ulonglong guid)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  return pvVar1 != (void *)0x0;
}

