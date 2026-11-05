/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011613d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.NameGuidMapService::NameGuidMapService_GetGuidByNameHash [assembly=ScriptCore
   token=0x06001044; nameHash: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC 1.67 NGMP instruction review. cdecl(UInt64 nameHash), caller cleans stack.
   Getter0059D6F0 supplies ECX manager; lookup0059D730 consumes copied 64-bit stack key and returns
   EDX:EAX. Older no-argument decompiler signature was wrong. */

ulonglong __cdecl
ScriptCore.NameGuidMapService::NameGuidMapService_GetGuidByNameHash(ulonglong nameHash)

{
  void *this;
  ulonglong uVar1;
  
  this = NameGuidMaps_GetGlobal();
  uVar1 = NameGuidMaps_FindFirstByHash(this,nameHash);
  return uVar1;
}

