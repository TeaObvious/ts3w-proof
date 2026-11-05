/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ea0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetFocusImpl [assembly=ScriptCore token=0x06000E0F; context:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Focus bridge: physical caller-clean ABI, one stack DWORD,
   both exits plain RET; the old stdcall metadata was wrong. CALL769390 gets handle service;
   CALL50AF90 gets focus service. Forward context to service virtual54, null result returns0. For
   nonnull IWindow interface first invoke its virtual0 reference acquisition, then handle-service
   virtualC8(interface,kind30) creates/translates the returned native handle. This is a retained
   boundary, distinct from raw service lookup; no CLR focus-map or text-editability admission is
   proved. */

uint __cdecl ScriptCore_UIManager__UIManager_GetFocusImpl(uint inputContext)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  uint uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar2 = (int *)FUN_0050af90();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x54))(inputContext);
  if (puVar3 != (undefined4 *)0x0) {
    (**(code **)*puVar3)();
    uVar4 = (**(code **)(*piVar1 + 200))(puVar3,0x30);
    return uVar4;
  }
  return 0;
}

