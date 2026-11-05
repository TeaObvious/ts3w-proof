/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161490 (original PC 1.67 TS3W.exe).
   ScriptCore.Objects::Objects_Clone [assembly=ScriptCore token=0x06000013; id: System.UInt64;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore.Objects::Objects_Clone(void)

{
  int iVar1;
  undefined4 *puVar2;
  void *this;
  int *piVar3;
  
  iVar1 = FUN_00937570();
  puVar2 = (undefined4 *)FUN_00937f80(iVar1);
  this = (void *)FUN_00937570();
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_0068f130((int)puVar2);
  }
  if (((this != (void *)0x0) && (puVar2 != (undefined4 *)0x0)) && (piVar3 != (int *)0x0)) {
    puVar2 = FUN_00938cc0(this,puVar2,0,0,0xffffffff);
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)(*piVar3 + 0x30))(puVar2);
      return *(undefined8 *)(puVar2 + 2);
    }
  }
  return 0;
}

