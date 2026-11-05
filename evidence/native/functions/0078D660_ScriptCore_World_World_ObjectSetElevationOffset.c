/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163660 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetElevationOffset [assembly=ScriptCore token=0x060007D0; objId:
   System.UInt64, elevation: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetElevationOffset
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *pvVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (((pvVar1 != (void *)0x0) &&
      (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0
      )) && (pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pvVar2 != (void *)0x0)) {
    pvVar1 = Object_FindCatalogInfo(pvVar1);
    uVar3 = FUN_00b032e0((void *)0x0,(int)pvVar1);
    if ((char)uVar3 != '\0') {
      *(undefined4 *)((int)pvVar2 + 0x24) = param_3;
    }
  }
  return;
}

