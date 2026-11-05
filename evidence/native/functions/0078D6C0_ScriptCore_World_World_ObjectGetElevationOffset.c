/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163668 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectGetElevationOffset [assembly=ScriptCore token=0x060007D1; objId:
   System.UInt64; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_ObjectGetElevationOffset(void)

{
  void *pvVar1;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
      if (pvVar1 != (void *)0x0) {
        return (float10)*(float *)((int)pvVar1 + 0x24);
      }
    }
  }
  return (float10)0;
}

