/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00758687) */
/* WARNING: Removing unreachable block (ram,0x0075868b) */
/* Verified PC 1.67 registration table at 0x01161bf0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_SetDebugIdentifier [assembly=ScriptCore token=0x06001057;
   footprintId: System.UInt64, identifier: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.RouteManager::RouteManager_SetDebugIdentifier(int param_1,int param_2,undefined4 param_3)

{
  void *pvVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined4 *puVar4;
  undefined4 auStack_1c [2];
  void *apvStack_14 [2];
  int iStack_c;
  
  if (param_1 != 0 || param_2 != 0) {
    pvVar1 = ObjectRegistry_GetGlobal();
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if ((pvVar1 != (void *)0x0) &&
       (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea138), pvVar1 != (void *)0x0)) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_3);
      if (pWVar3 != (LPCWSTR)0x0) {
        puVar4 = Utf_ConvertWideSpanToByteStorage
                           (apvStack_14,pWVar3,0xffffffff,"Routing/TempString");
        if (puVar4 != auStack_1c + -2) {
          FUN_00405910(auStack_1c + -2,(void *)*puVar4,(undefined1 *)puVar4[1]);
        }
        if ((1 < iStack_c - (int)apvStack_14[0]) && (apvStack_14[0] != (void *)0x0)) {
          Memory_FreeIfNonNull(apvStack_14[0]);
        }
      }
      FUN_00954c00(pvVar1,&DAT_011c8e54);
    }
  }
  return;
}

