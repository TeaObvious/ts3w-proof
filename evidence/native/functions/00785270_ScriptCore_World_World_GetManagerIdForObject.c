/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011632a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetManagerIdForObject [assembly=ScriptCore token=0x06000751;
   scriptHandle: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_GetManagerIdForObject(void)

{
  void *pvVar1;
  int iVar2;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (pvVar1 != (void *)0x0) {
      iVar2 = FUN_0068f130((int)pvVar1);
      if (iVar2 == 0) {
        return 0;
      }
      return *(undefined8 *)(iVar2 + 0x48);
    }
  }
  return 0;
}

