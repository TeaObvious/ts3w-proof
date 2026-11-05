/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163b10 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_IsLiveDraggingEnabledImpl [assembly=ScriptCore token=0x06000864; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

byte ScriptCore_World__World_IsLiveDraggingEnabledImpl(void)

{
  byte bVar1;
  void *pvVar2;
  int iVar3;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(in_stack_00000008,in_stack_00000004));
    if (pvVar2 != (void *)0x0) {
      iVar3 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)pvVar2 + 0x18));
      if (iVar3 != 0) {
        bVar1 = FUN_00c97740(iVar3);
        return bVar1;
      }
    }
  }
  return 0;
}

