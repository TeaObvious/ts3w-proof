/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161418 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Objects::Objects_GetBoundingBox [assembly=ScriptCore token=0x06000004; id:
   System.UInt64; return=Sims3.SimIFace.BoundingBox]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_Objects__Objects_GetBoundingBox(undefined4 *param_1)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_0000000c,in_stack_00000008));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fc4);
    if (pvVar1 != (void *)0x0) {
      puVar2 = (undefined4 *)ModelComponent_GetBoundsStorage((int)pvVar1);
      FUN_0076c1a0(param_1,puVar2);
      return param_1;
    }
  }
  FUN_0076bf70(param_1,0,0,0);
  FUN_0076bf70(param_1 + 3,0,0,0);
  return param_1;
}

