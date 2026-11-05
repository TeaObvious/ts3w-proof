/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162a38 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.VisualEffect::Swarm_SetPickOverriderId [assembly=ScriptCore token=0x060004CB;
   effectHandle: System.UInt64, pickId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_VisualEffect__Swarm_SetPickOverriderId
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9e90);
    if (pvVar1 != (void *)0x0) {
      uVar2 = FUN_00943790(pvVar1,param_3,param_4);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
  }
  return 0;
}

