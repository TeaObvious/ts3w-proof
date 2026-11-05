/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161490 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Objects::Objects_Clone [assembly=ScriptCore token=0x06000013; id: System.UInt64;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore.Objects::Objects_Clone(void)

{
  void *pvVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  puVar2 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000008,in_stack_00000004));
  pvVar1 = ObjectRegistry_GetGlobal();
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_0068f130((int)puVar2);
  }
  if (((pvVar1 != (void *)0x0) && (puVar2 != (undefined4 *)0x0)) && (piVar3 != (int *)0x0)) {
    puVar2 = FUN_00938cc0(pvVar1,puVar2,0,0,0xffffffff);
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)(*piVar3 + 0x30))(puVar2);
      return *(undefined8 *)(puVar2 + 2);
    }
  }
  return 0;
}

