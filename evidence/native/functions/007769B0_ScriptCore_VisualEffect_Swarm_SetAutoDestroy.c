/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162a00 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.VisualEffect::Swarm_SetAutoDestroy [assembly=ScriptCore token=0x060004C4;
   effectHandle: System.UInt64, destroy: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VisualEffect__Swarm_SetAutoDestroy
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  void *pvVar1;
  void *this;
  uint uStack_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    this = Object_GetComponentByMask(pvVar1,DAT_011e9e90);
    if (this != (void *)0x0) {
      uStack_4 = (uint)(param_3 != '\0');
      FUN_009445a0(this,5,(int *)&uStack_4,1);
    }
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar1 != (void *)0x0) {
      FUN_00955f30((int)pvVar1);
      return;
    }
  }
  return;
}

