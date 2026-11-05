/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163db8 (TS3W.exe).
   ScriptCore.World::World_LoadTickImpl [assembly=ScriptCore token=0x060008A8; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 load-pump leaf. Registered managed no-argument void entry is EXACT5-byte E9 tail
   jump toC5F5C0, not16-byte padding window. Previous one-address Ghidra body expanded to
   complete5-byte instruction; original bytes unchanged. Target performs optional callback only.
   Thunk decompilation may display target body rather than an explicit jump. No native asset
   completion/simulation readiness result exists at this void entry. */

void __cdecl ScriptCore_World__World_LoadTickImpl(void)

{
  if (PTR_011edbc8 != (WorldLoadPumpCallback *)0x0) {
    (*PTR_011edbc8)(DAT_011edbcc);
  }
  return;
}

