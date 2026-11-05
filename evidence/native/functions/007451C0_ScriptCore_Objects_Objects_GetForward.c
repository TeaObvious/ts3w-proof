/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161440 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Objects::Objects_GetForward [assembly=ScriptCore token=0x06000009; id: System.UInt64;
   return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl ScriptCore.Objects::Objects_GetForward(undefined4 *param_1)

{
  void *pvVar1;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  float local_50 [8];
  undefined4 local_30 [11];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_0000000c,in_stack_00000008));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar1 != (void *)0x0) {
      TransformComponent_GetWorldMatrix(pvVar1,local_50);
      FUN_0076c150(param_1,local_30);
      return param_1;
    }
  }
  FUN_0076bf70(param_1,0,0,0x3f800000);
  return param_1;
}

