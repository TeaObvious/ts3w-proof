/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c30 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_SetCarSpeed [assembly=ScriptCore token=0x06001051;
   carObjID: System.UInt64, speed: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 original full routing wrapper recovered from one-byte placeholder function. Physical cdecl
   GUIDlow/high andbinary32speed3stackwords/plainRET; gets current objectregistry, resolves
   fullGUIDborrowed pointer, resolves routing component using011EA138, then calls component
   speedsetter. No detached ID-only scalar table and no callback tooriginalmanageddecision
   inthiswrapper. No general arbitrarythread-safety guarantee inferred fromlookupthenuse. */

void __cdecl
ScriptCore_RouteManager__RouteManager_SetCarSpeed(dword guidLow,dword guidHigh,float speed)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(guidHigh,guidLow));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea138);
      if (pvVar1 != (void *)0x0) {
        FUN_00954820(pvVar1,speed);
      }
    }
  }
  return;
}

