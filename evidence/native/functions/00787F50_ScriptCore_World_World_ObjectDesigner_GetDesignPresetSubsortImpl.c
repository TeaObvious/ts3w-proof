/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011638a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetDesignPresetSubsortImpl [assembly=ScriptCore
   token=0x06000815; index: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Original managed identity is preserved. Recovered FULL18byte function from seeded one-byte
   placeholder: MOV EAX,[ESP+4]; PUSH EAX; CALL B302A0 global product-preset owner; ECX=EAX; CALL
   B31170; plainRET. Physical cdecl oneUInt32 stackword; childRET4 consumes forwarded copy, caller
   retains original argument. FullEAX returns subsort, including0; not void/stdcall or a pointer
   parameter. No metadata patch changes original file/memory bytes. */

uint __cdecl ScriptCore_World__World_ObjectDesigner_GetDesignPresetSubsortImpl(uint presetId)

{
  void *this;
  uint uVar1;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  uVar1 = ProductPresets_GetDesignSubsort(this,presetId);
  return uVar1;
}

