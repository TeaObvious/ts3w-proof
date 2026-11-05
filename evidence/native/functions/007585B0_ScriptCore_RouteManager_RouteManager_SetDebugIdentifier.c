/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00758687) */
/* WARNING: Removing unreachable block (ram,0x0075868b) */
/* Verified PC 1.67 registration table at 0x01161bf0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetDebugIdentifier [assembly=ScriptCore token=0x06001057;
   footprintId: System.UInt64, identifier: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.RouteManager::RouteManager_SetDebugIdentifier(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  LPCWSTR pWVar4;
  undefined4 *puVar5;
  int aiStack_14 [2];
  int iStack_c;
  
  if (param_1 != 0 || param_2 != 0) {
    iVar1 = FUN_00937570();
    pvVar2 = (void *)FUN_00937f80(iVar1);
    if ((pvVar2 != (void *)0x0) &&
       (pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea138), pvVar2 != (void *)0x0)) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      pWVar4 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(param_3);
      if (pWVar4 != (LPCWSTR)0x0) {
        puVar5 = FUN_004f3cc0(aiStack_14,pWVar4,0xffffffff,"Routing/TempString");
        if (puVar5 != (undefined4 *)&stack0xffffffdc) {
          FUN_00405910(&stack0xffffffdc,(void *)*puVar5,(undefined1 *)puVar5[1]);
        }
        if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
          FUN_004e44e0(aiStack_14[0]);
        }
      }
      FUN_00954c00(pvVar2,&DAT_011c8e54);
    }
  }
  return;
}

