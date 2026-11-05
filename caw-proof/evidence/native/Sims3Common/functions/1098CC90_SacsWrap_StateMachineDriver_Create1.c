/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_Create1. Export
   ordinal(s): 2191. Entry VA: 0x1098cc90. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_StateMachineDriver_Create1(void)

{
  void *this;
  undefined4 *puVar1;
  
                    /* 0x98cc90  2191  SacsWrap_StateMachineDriver_Create1 */
  this = (void *)FUN_10918eb0(0x14c,"CSHost/SACS/StateMachineDriver",0);
  if (this != (void *)0x0) {
    puVar1 = FUN_105f32a0(this,0);
    if (puVar1 != (undefined4 *)0x0) {
      (**(code **)puVar1[2])();
    }
    return puVar1;
  }
  return (undefined4 *)0x0;
}

