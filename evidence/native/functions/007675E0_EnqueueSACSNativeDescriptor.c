/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration path: SACS class descriptor is passed to host vtable +0x48, whose
   target 0x00D744E0 appends to host list at +0x1600; table getter for this descriptor is
   0x007691D0, which returns table 0x01161DE0. Source:
   evidence/bindings/consumer-trace.md. */

void __cdecl EnqueueSACSNativeDescriptor(int *param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_004e4500(4,"Scripting/ScriptFunctions",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = ConstructSACSNativeDescriptor(puVar1);
    (**(code **)(*param_1 + 0x48))(puVar1);
    return;
  }
  (**(code **)(*param_1 + 0x48))(0);
  return;
}

