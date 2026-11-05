/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011635d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectPreloadMaterial [assembly=ScriptCore token=0x060007BF; objId:
   System.UInt64, materialSetName: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectPreloadMaterial
               (undefined4 param_1,undefined4 param_2,int param_3)

{
  void *pvVar1;
  int *piVar2;
  wint_t *pwVar3;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fc4);
      if (pvVar1 != (void *)0x0) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        if (param_3 != 0) {
          pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_3);
          FUN_007d0020(pwVar3);
        }
      }
    }
  }
  return;
}

