/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163be0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_SetWallCutoutStateForObjectImpl [assembly=ScriptCore token=0x0600087E;
   objId: System.UInt64, bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetWallCutoutStateForObjectImpl
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    if (param_3 != '\0') {
      WorldObject_ApplyAuthoredWallAndFenceCutoutRows(pvVar1);
      return;
    }
    FUN_00b0c120(pvVar1);
  }
  return;
}

