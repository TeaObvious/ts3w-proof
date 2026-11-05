/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161d48 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_SetRouteSoundSpec [assembly=ScriptCore token=0x0600107A;
   simObjId: System.UInt64, rCruise: System.String, rDecelerate: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.RouteManager::RouteManager_SetRouteSoundSpec
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  void *pvVar1;
  int *piVar2;
  short *psVar3;
  int local_20 [4];
  undefined1 auStack_10 [16];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (((pvVar1 != (void *)0x0) &&
      (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0
      )) && (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea138), pvVar1 != (void *)0x0)) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    FUN_00858f30(local_20);
    if (param_3 == 0) {
      psVar3 = &DAT_00fba6c4;
    }
    else {
      psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_3);
    }
    FUN_00408f50(local_20,psVar3);
    if (param_4 == 0) {
      psVar3 = &DAT_00fba6c4;
    }
    else {
      psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_4);
    }
    FUN_00408f50(auStack_10,psVar3);
    FUN_00954c40(pvVar1,local_20);
    FUN_004ef9f0(local_20);
  }
  return;
}

