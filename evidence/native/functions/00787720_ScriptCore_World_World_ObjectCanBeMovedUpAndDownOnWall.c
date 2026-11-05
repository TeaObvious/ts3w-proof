/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011636d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectCanBeMovedUpAndDownOnWall [assembly=ScriptCore token=0x060007E2;
   objId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_ObjectCanBeMovedUpAndDownOnWall(void)

{
  void *pvVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (pvVar1 != (void *)0x0) {
      iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)pvVar1 + 0x18));
      if (iVar2 != 0) {
        uVar3 = FUN_00b032e0(pvVar1,iVar2);
        return uVar3;
      }
    }
  }
  return 0;
}

