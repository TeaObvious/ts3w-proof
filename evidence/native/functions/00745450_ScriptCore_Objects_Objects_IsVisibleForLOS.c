/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161498 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Objects::Objects_IsVisibleForLOS [assembly=ScriptCore token=0x06000014; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_Objects__Objects_IsVisibleForLOS(void)

{
  undefined1 uVar1;
  void *pvVar2;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (pvVar2 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011e9fc8);
      if (pvVar2 != (void *)0x0) {
        uVar1 = FUN_008a62b0((int)pvVar2);
        return uVar1;
      }
    }
  }
  return 0;
}

