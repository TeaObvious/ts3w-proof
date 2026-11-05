/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c18 (TS3W.exe).
   ScriptCore.World::World_LoadHeightMapRelatedDataImpl [assembly=ScriptCore token=0x06000788;
   bKeepLoaded: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 heightmap lifecycle. Managed load wrapper tests world singleton011edbc4,
   forwards bool to World_EnsureHeightmapRelatedData and discardsAL result. Caller owns4-byte bool
   stack slot; native wrapper RET at00787434. No work when manager missing. */

void __cdecl ScriptCore_World__World_LoadHeightMapRelatedDataImpl(bool keepLoaded)

{
  if (DAT_011edbc4 != (void *)0x0) {
    World_EnsureHeightmapRelatedData(DAT_011edbc4,keepLoaded);
  }
  return;
}

