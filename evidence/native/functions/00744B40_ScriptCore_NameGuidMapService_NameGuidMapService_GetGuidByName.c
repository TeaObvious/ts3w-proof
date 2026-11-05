/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011613e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.NameGuidMapService::NameGuidMapService_GetGuidByName [assembly=ScriptCore
   token=0x06001045; name: System.String; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC 1.67 NGMP instruction review. cdecl(managed string handle), returns UInt64. Original
   complete33-byte CALL..RET body ends00744B60; inherited one-byte function body was incorrect.
   Global interface virtual+58 converts supplied handle to UTF16 pointer (exact host string lifetime
   separate); forward to0059D790. Per-call ABI ECX host/one stack word verified. */

ulonglong __cdecl ScriptCore_NameGuidMapService__NameGuidMapService_GetGuidByName(void *managedName)

{
  int *arg0;
  ushort *wideName;
  void *this;
  ulonglong uVar1;
  
  arg0 = (int *)GetGlobalInterfacePointer_11D5BBC();
  wideName = (**(code **)(*arg0 + 0x58))(arg0,managedName);
  this = NameGuidMaps_GetGlobal();
  uVar1 = NameGuidMaps_FindByWideName(this,wideName);
  return uVar1;
}

